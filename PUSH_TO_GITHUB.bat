@echo off
:: One-click push helper for Windows
:: Run this after creating empty repo on GitHub website

setlocal

echo =========================================
echo  Work Checklist - Push to GitHub Helper
echo =========================================
echo.
set /p USERNAME="Enter your GitHub username: "
set /p REPONAME="Enter repo name [work-checklist]: "
if "%REPONAME%"=="" set "REPONAME=work-checklist"

echo.
echo Will push to: https://github.com/%USERNAME%/%REPONAME%.git
echo.
pause

git init
git add index.html dashboard.html README.md README-Setup-Guide.md GITHUB_SETUP.md OPEN-FROM-GITHUB.bat Setup-9AM-AutoOpen.bat .gitignore
git commit -m "Initial daily 9AM work checklist - Mon-Fri"
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/%USERNAME%/%REPONAME%.git
git push -u origin main

echo.
echo Done! Now go to:
echo https://github.com/%USERNAME%/%REPONAME%/settings/pages
echo Enable Pages: main branch / root
echo Your checklist will be at: https://%USERNAME%.github.io/%REPONAME%/
echo.
echo IMPORTANT: Edit OPEN-FROM-GITHUB.bat and set URL to that Pages URL
echo.
pause
