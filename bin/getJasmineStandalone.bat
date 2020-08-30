@echo off

SET thisBatPath=%~dp0
cd %thisBatPath:~0,-1%

cd..

md .\tests >nul 2>&1

for /f %%i in ('dir /a /b .\tests') do goto notEmpty
goto :empty

:empty

for /f %%i in ('powershell -Command "Write-Host (Invoke-WebRequest https://api.github.com/repos/jasmine/jasmine/releases/latest | ConvertFrom-JSON).assets[0].browser_download_url"') do set browser_download_url=%%i
for /F "delims=" %%i in ("%browser_download_url%") do set filename=%%~ni

powershell -Command "Invoke-WebRequest %browser_download_url%  -OutFile %filename%.zip"
powershell -Command "Expand-Archive -Force %filename%.zip"

xcopy /s/e/h/y .\%filename%\* .\tests
rd .\%filename% /s/q  >nul 2>&1
del /f/q %filename%.zip

:notEmpty
echo done.
pause