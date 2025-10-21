@echo off
REM === R K Jewellars Website Upload Script ===
REM This script will upload your extracted 'rk2_standard_site' folder to GitHub.

set /p USERNAME=Enter your GitHub username: 
set /p REPO=Enter your repository name (example: rk-jewellars-site): 

echo.
echo ⚙️  Initializing Git repository...
git init

echo ⚙️  Adding all website files...
git add .

echo ⚙️  Committing changes...
git commit -m "Initial upload of R K Jewellars website"

echo ⚙️  Setting main branch...
git branch -M main

echo ⚙️  Adding GitHub remote...
git remote add origin https://github.com/%USERNAME%/%REPO%.git

echo ⚙️  Pushing files to GitHub...
git push -u origin main

echo ✅ Upload complete!
pause
