@echo off
color 0a
setlocal
call "%~dp0\venv\Scripts\activate.bat"
cd "%~dp0"
start "LiteLLM Proxy" cmd /s /c "dotenv -f "%~dp0\api_keys.txt" run -- litellm --config "%~dp0\litellm_config.yaml" && pause"
deactivate
endlocal