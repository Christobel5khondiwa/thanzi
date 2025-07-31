@echo off
echo ========================================
echo   Deploying Enhanced API to Render
echo ========================================

echo.
echo 🚀 Step 1: Adding updated thanzi.py...
git add thanzi.py

echo.
echo 🚀 Step 2: Committing enhanced API...
git commit -m "Deploy enhanced API with unknown symptom validation

✅ Added symptom validation before prediction
✅ Returns 'unknown' disease for invalid symptoms
✅ Enhanced response with unknown_symptoms and valid_symptoms fields
✅ Added /symptoms endpoint to list all valid symptoms
✅ Prevents prediction with completely invalid symptoms
✅ Maintains accuracy by only using valid symptoms

New Features:
- Validates input symptoms against model features
- Returns detailed feedback on symptom validity
- Enhanced error handling for better user experience
- Smart prediction logic with validation"

echo.
echo 🚀 Step 3: Pushing to GitHub (triggers Render auto-deploy)...
git push origin main

echo.
echo ========================================
echo   Deployment Initiated Successfully!
echo ========================================
echo.
echo ⏱️  Render is now auto-deploying your enhanced API...
echo    Expected deployment time: 3-5 minutes
echo.
echo 🌐 Your enhanced API will be live at:
echo    https://thanzi-api.onrender.com
echo.
echo 📋 New features being deployed:
echo    ✅ Unknown symptom validation
echo    ✅ Enhanced response format
echo    ✅ /symptoms endpoint for valid symptom list
echo    ✅ Smart prediction with validation
echo.
echo 🧪 Test commands after deployment:
echo.
echo Valid symptoms test:
echo curl -X POST "https://thanzi-api.onrender.com/predict" -H "Content-Type: application/json" -d "{\"symptoms\": [\"fever\", \"cough\", \"headache\"]}"
echo.
echo Invalid symptoms test (should return 'unknown'):
echo curl -X POST "https://thanzi-api.onrender.com/predict" -H "Content-Type: application/json" -d "{\"symptoms\": [\"invalidword\", \"fakesymptom\"]}"
echo.
echo Get valid symptoms list:
echo curl "https://thanzi-api.onrender.com/symptoms"
echo.
echo 📖 API Documentation:
echo https://thanzi-api.onrender.com/docs
echo.
pause
