@echo off
echo ========================================
echo   Adding Unknown Symptom Validation
========================================

echo.
echo Step 1: Adding updated files...
git add .

echo.
echo Step 2: Committing validation feature...
git commit -m "Add unknown symptom validation

✅ Added symptom validation before prediction
✅ Returns 'unknown' for invalid symptoms
✅ Shows which symptoms are valid/invalid
✅ Added /symptoms endpoint to list valid symptoms
✅ Enhanced response with validation details

Features:
- Validates symptoms against model features
- Returns unknown_symptoms and valid_symptoms in response
- Prevents prediction with all invalid symptoms
- Warns about unknown symptoms but still predicts with valid ones"

echo.
echo Step 3: Pushing to GitHub...
git push origin main

echo.
echo ========================================
echo   Validation Feature Added!
========================================
echo.
echo ✅ New API features:
echo   - Symptom validation before prediction
echo   - /symptoms endpoint for valid symptom list
echo   - Enhanced response with validation details
echo.
echo 🧪 Test locally with:
echo   python thanzi.py
echo   python test_unknown_symptoms.py
echo.
echo 🌐 Will auto-deploy to Render:
echo   https://thanzi-api.onrender.com
echo.
pause
