@echo off
echo ========================================
echo   Resolving Git Conflicts
========================================

echo.
echo Step 1: Checking git status to see conflicts...
git status

echo.
echo Step 2: Listing conflicted files...
git diff --name-only --diff-filter=U

echo.
echo Step 3: Aborting current merge to start fresh...
git merge --abort

echo.
echo Step 4: Checking status after abort...
git status

echo.
echo Step 5: Force pushing our version (this will overwrite remote)...
git push -u origin main --force

echo.
echo ========================================
echo   Conflict Resolution Complete!
========================================
echo.
echo ✅ Your project should now be live at:
echo 🔗 https://github.com/Christobel5khondiwa/thanzi
echo.
pause
