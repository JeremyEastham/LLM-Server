@echo off
call "%~dp0\venv\Scripts\activate.bat"
python -m pip install pip --upgrade
pip install -r "%~dp0\requirements.txt" --upgrade --upgrade-strategy eager
deactivate