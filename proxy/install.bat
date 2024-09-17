@echo off
echo Creating virtual environment...
python -m venv "%~dp0\venv"
call "%~dp0\venv\Scripts\activate.bat"
echo Installing LiteLLM...
python -m pip install pip --upgrade
pip install -r "%~dp0\requirements.txt"
deactivate