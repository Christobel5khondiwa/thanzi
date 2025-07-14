@echo off
echo ========================================
echo   Fixing "Not Found" Error
========================================

echo.
echo Step 1: Adding root endpoint fix...
git add .

echo.
echo Step 2: Committing the fix...
git commit -m "Fix Not Found error - Add root health check endpoint"

echo.
echo Step 3: Pushing to GitHub...
git push origin main

echo.
echo ========================================
echo   Fix Deployed!
========================================
echo.
echo ✅ Added root endpoint: GET /
echo ✅ Render will auto-deploy the fix
echo.
echo 🧪 Test these URLs after deployment:
echo   Health Check: https://your-app.onrender.com/
echo   API Docs: https://your-app.onrender.com/docs
echo   Prediction: https://your-app.onrender.com/predict (POST)
echo.
echo ⏱️ Wait 2-3 minutes for Render to redeploy
echo.
pause
