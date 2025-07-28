@echo off
echo ========================================
echo   Deploying Enhanced API to Render
echo ========================================

echo.
echo 🚀 Step 1: Adding all files...
git add .
echo ✅ Files staged for commit

echo.
echo 🚀 Step 2: Committing changes...
git commit -m "Deploy enhanced API with unknown symptom validation

✅ Added symptom validation before prediction
✅ Returns 'unknown' for invalid symptoms  
✅ Shows valid_symptoms and unknown_symptoms in response
✅ Added /symptoms endpoint to list all valid symptoms
✅ Enhanced error handling and user feedback

Features:
- Validates input symptoms against model features
- Prevents prediction with invalid symptoms
- Provides clear feedback on unknown symptoms
- Maintains prediction accuracy with valid symptoms only"

echo ✅ Changes committed locally

echo.
echo 🚀 Step 3: Pushing to GitHub (triggers Render deployment)...
git push origin main
echo ✅ Pushed to GitHub - Render will auto-deploy!

echo.
echo ========================================
echo   Deployment Initiated!
echo ========================================
echo.
echo ⏱️  Render is now deploying your enhanced API...
echo    This will take 2-5 minutes
echo.
echo 🌐 Your API will be updated at:
echo    https://thanzi-api.onrender.com
echo.
echo 📋 New features being deployed:
echo    ✅ Symptom validation
echo    ✅ Unknown symptom detection  
echo    ✅ Enhanced response format
echo    ✅ /symptoms endpoint
echo.
echo 🧪 Test after deployment:
echo    Valid:   curl -X POST "https://thanzi-api.onrender.com/predict" -H "Content-Type: application/json" -d "{\"symptoms\": [\"fever\", \"cough\"]}"
echo    Invalid: curl -X POST "https://thanzi-api.onrender.com/predict" -H "Content-Type: application/json" -d "{\"symptoms\": [\"invalidword\"]}"
echo.
pause
