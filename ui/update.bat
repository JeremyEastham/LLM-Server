@echo off
setlocal
call "%~dp0\venv\Scripts\activate.bat"
echo Using virtual environment: %VIRTUAL_ENV%
python -m pip -v install pip --upgrade
pip -v install -r "%~dp0\requirements.txt" --upgrade
deactivate
endlocal