@echo off
color 0a
setlocal
call "%~dp0\venv\Scripts\activate.bat"
cd "%~dp0"
start "Open WebUI" cmd /s /c "dotenv run -- open-webui serve --port 80 && pause"
deactivate
endlocal