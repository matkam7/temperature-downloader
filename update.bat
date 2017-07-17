@echo off
SET mypath=%~dp0
CALL %mypath:~0,-1%\fetch.bat
SET mypath=%~dp0
powershell -ExecutionPolicy ByPass -File %mypath:~0,-1%\update.ps1 -windowstyle hidden