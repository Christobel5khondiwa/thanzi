@echo off
echo ========================================
echo   Fixing Render Build Issues
========================================

echo.
echo Step 1: Adding fixed files...
git add .

echo.
echo Step 2: Committing build fixes...
git commit -m "Fix Render build issues

- Updated requirements.txt with flexible versions
- Added runtime.txt for Python version
- Updated render.yaml with better build command
- Added minimal requirements as backup"

echo.
echo Step 3: Pushing fixes to GitHub...
git push origin main

echo.
echo ========================================
echo   Build Fixes Pushed!
========================================
echo.
echo ✅ Updated files:
echo   - requirements.txt (flexible versions)
echo   - runtime.txt (Python 3.11.0)
echo   - render.yaml (improved build)
echo   - requirements_minimal.txt (backup)
echo.
echo 🔧 Try deploying again on Render with:
echo   Build Command: pip install --upgrade pip && pip install -r requirements.txt
echo   Start Command: python thanzi.py
echo.
echo 📋 If still failing, try:
echo   Build Command: pip install --upgrade pip && pip install -r requirements_minimal.txt
echo.
pause
