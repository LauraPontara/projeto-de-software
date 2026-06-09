# ============================================================
#  build.ps1 — Renderiza os diagramas PlantUML e compila o PDF
#  Uso:  pwsh -File build.ps1        (na pasta trabalho-final)
# ============================================================
$ErrorActionPreference = 'Stop'

$root    = Split-Path -Parent $MyInvocation.MyCommand.Path
$repo    = Split-Path -Parent $root
$tools   = Join-Path $repo '.tools'
$jar     = Join-Path $tools 'plantuml.jar'
$codigos = Join-Path $root 'diagramas\codigos'
$imagens = Join-Path $root 'diagramas\imagens'
$doc     = Join-Path $root 'documentacao'

# 1. Garante o plantuml.jar (baixa se ausente)
if (-not (Test-Path $jar)) {
  New-Item -ItemType Directory -Force $tools | Out-Null
  $url = 'https://github.com/plantuml/plantuml/releases/download/v1.2025.4/plantuml-1.2025.4.jar'
  Write-Host "Baixando plantuml.jar..."
  Invoke-WebRequest -Uri $url -OutFile $jar -UseBasicParsing
}

# 2. Renderiza todos os diagramas (ignora arquivos _*.puml de include)
Write-Host "Renderizando diagramas..."
$pumls = Get-ChildItem $codigos -Filter '*.puml' | Where-Object { $_.Name -notlike '_*' }
Push-Location $codigos
& java -jar $jar -tpng -o $imagens ($pumls | ForEach-Object { $_.Name })
Pop-Location
Write-Host "Imagens geradas em $imagens"

# 3. Compila o PDF (duas passadas: sumário + referências cruzadas)
Write-Host "Compilando main.tex..."
Push-Location $doc
& pdflatex -interaction=nonstopmode -halt-on-error main.tex | Out-Null
& pdflatex -interaction=nonstopmode -halt-on-error main.tex | Out-Null
$ok = $LASTEXITCODE
Pop-Location

if ($ok -eq 0) { Write-Host "OK -> $doc\main.pdf" }
else { Write-Host "Falha na compilacao (exit=$ok). Verifique $doc\main.log" }
