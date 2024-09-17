@echo off
setlocal
echo Creating virtual environment...
python -m venv "%~dp0\venv"
call "%~dp0\venv\Scripts\activate.bat"
echo Using virtual environment: %VIRTUAL_ENV%
echo Installing LiteLLM...
python -m pip -v install pip --upgrade
pip -v install -r "%~dp0\requirements.txt"
deactivate
endlocal