@echo off
echo ========================================
echo   Pushing Thanzi Project to GitHub
echo ========================================

echo.
echo Step 1: Initializing Git repository...
git init

echo.
echo Step 2: Adding remote repository...
git remote add origin https://github.com/Christobel5khondiwa/thanzi.git

echo.
echo Step 3: Checking git status...
git status

echo.
echo Step 4: Adding all files...
git add .

echo.
echo Step 5: Committing changes...
git commit -m "Initial commit: Disease Prediction API

- FastAPI-based disease prediction system
- Machine learning model for symptom-based diagnosis  
- Clean API without confidence scores
- CORS enabled for frontend integration
- Includes model files and documentation"

echo.
echo Step 6: Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo   Push to GitHub Complete!
echo ========================================
echo.
echo Your project is now available at:
echo https://github.com/Christobel5khondiwa/thanzi
echo.
pause
