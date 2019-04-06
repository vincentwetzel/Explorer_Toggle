@echo off

TASKLIST | FINDSTR /I "explorer.exe"
IF NOT ERRORLEVEL 1 (
taskkill /f /IM explorer.exe
) ELSE (
start "" "%windir%\explorer.exe"
)

::pause
exit
