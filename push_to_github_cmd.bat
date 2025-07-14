@echo off
echo ========================================
echo   Pushing Thanzi Project to GitHub
echo ========================================

echo.
echo Current directory: %CD%
echo.

echo Step 1: Checking git status...
git status
echo.

echo Step 2: Committing changes...
git commit -m "Initial commit: Disease Prediction API"
echo.

echo Step 3: Checking current branch...
git branch
echo.

echo Step 4: Renaming branch to main...
git branch -M main
echo.

echo Step 5: Pushing to GitHub...
git push -u origin main
echo.

echo ========================================
echo   Git Operations Complete!
echo ========================================
echo.
echo Your project should now be available at:
echo https://github.com/Christobel5khondiwa/thanzi
echo.
echo If you see any errors above, please check:
echo - Internet connection
echo - GitHub authentication
echo - Repository permissions
echo.
pause
