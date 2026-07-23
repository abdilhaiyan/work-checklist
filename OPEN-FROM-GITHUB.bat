@echo off
:: Work Checklist - GitHub Pages Auto-Open at 9AM (Mon-Fri)
:: FOLLOW RECOMMENDATION: This version opens your GitHub Pages URL

:: ========== EDIT THIS LINE ==========
:: Replace YOURUSERNAME with your GitHub username after you push
set "URL=https://abdilhaiyan.github.io/work-checklist/"
:: ====================================

echo.
echo Opening Work Checklist from GitHub...
echo URL: %URL%
echo.
echo If this is your first time, make sure you:
echo 1. Pushed this folder to GitHub as 'work-checklist' repo
echo 2. Enabled Settings ^> Pages ^> main branch / root
echo 3. Edited this file to put YOUR real username in URL
echo.
start "" "%URL%"
exit /b
