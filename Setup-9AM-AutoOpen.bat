@echo off
:: Work Checklist - Auto Open at 9 AM Weekdays
:: Put this file in the SAME folder as dashboard.html
:: Double-clicking it will open the dashboard

setlocal
set "DASHBOARD=%~dp0dashboard.html"
echo Opening Work Checklist: %DASHBOARD%
start "" "%DASHBOARD%"
exit /b
