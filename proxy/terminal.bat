@echo off
color 0a
call "%~dp0\venv\Scripts\activate.bat"
if "%1" neq "--quiet" if "%1" neq "-q" cmd