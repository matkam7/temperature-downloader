@echo off
SET minutes=1
SET mypath=%~dp0
schtasks /create /F /sc minute /mo %minutes% /tn "Get Temperature" /tr %mypath:~0,-1%\update.bat
CALL update.bat