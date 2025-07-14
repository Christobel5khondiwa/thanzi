@echo off
echo ========================================
echo   Complete Git Setup and Push
echo ========================================

echo.
echo Step 1: Setting up Git identity...
git config --global user.name "Christobel5khondiwa"
git config --global user.email "christobel5khondiwa@example.com"
echo ✅ Git identity configured

echo.
echo Step 2: Verifying Git configuration...
echo Name: 
git config user.name
echo Email: 
git config user.email

echo.
echo Step 3: Adding any remaining files...
git add .

echo.
echo Step 4: Checking git status...
git status

echo.
echo Step 5: Committing changes...
git commit -m "Initial commit: Disease Prediction API

- FastAPI-based disease prediction system
- Machine learning model for symptom-based diagnosis
- Clean API without confidence scores
- CORS enabled for frontend integration
- Includes model files and documentation"

echo.
echo Step 6: Checking current branch...
git branch

echo.
echo Step 7: Ensuring we're on main branch...
git branch -M main

echo.
echo Step 8: Pushing to GitHub...
git push -u origin main

echo.
echo ========================================
echo   Git Push Complete!
echo ========================================
echo.
echo ✅ Your project is now available at:
echo 🔗 https://github.com/Christobel5khondiwa/thanzi
echo.
echo 📋 What was pushed:
echo   - thanzi.py (Disease Prediction API)
echo   - requirements.txt (Dependencies)
echo   - README.md (Documentation)
echo   - Model files (best_model.pkl, etc.)
echo   - All supporting files
echo.
pause
