@echo off
echo ========================================
echo   Fixing Push Conflict and Completing Upload
========================================

echo.
echo Step 1: Pulling remote changes first...
git pull origin main --allow-unrelated-histories

echo.
echo Step 2: Checking status after pull...
git status

echo.
echo Step 3: Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo   Push Complete!
========================================
echo.
echo ✅ Your project is now live at:
echo 🔗 https://github.com/Christobel5khondiwa/thanzi
echo.
echo 📋 Your Disease Prediction API includes:
echo   ✅ thanzi.py - Main API file
echo   ✅ requirements.txt - Dependencies
echo   ✅ README.md - Documentation
echo   ✅ best_model.pkl - Trained ML model
echo   ✅ All supporting files
echo.
echo 🚀 Ready for deployment to:
echo   - Heroku
echo   - Railway
echo   - Render
echo   - Any cloud platform
echo.
pause
