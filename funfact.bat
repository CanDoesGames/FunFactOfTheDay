@echo off
set "github_url=https://raw.githubusercontent.com/CanDoesGames/funfact/main/fact.txt"


where curl >nul 2>nul
if %errorlevel%==0 (
    curl -s %github_url%
    echo .
) else (
    powershell -Command "Invoke-WebRequest -Uri '%github_url%' -UseBasicParsing | Select-Object -ExpandProperty Content"
    echo .
)

pause
