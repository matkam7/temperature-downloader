@echo off
SET mypath=%~dp0
DEL "%mypath:~0,-1%\temperature.json"
powershell -ExecutionPolicy ByPass -File %mypath:~0,-1%\fetch.ps1 -windowstyle hidden