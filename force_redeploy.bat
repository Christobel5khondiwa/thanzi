@echo off
echo ========================================
echo   Force Redeploy to Fix Not Found Error
========================================

echo.
echo Step 1: Adding all changes...
git add .

echo.
echo Step 2: Committing with timestamp...
git commit -m "Force redeploy - Fix Not Found error %date% %time%"

echo.
echo Step 3: Force pushing to trigger redeploy...
git push origin main --force

echo.
echo ========================================
echo   Redeploy Triggered!
========================================
echo.
echo ⏱️ Wait 3-5 minutes for Render to redeploy
echo.
echo 🧪 Then test:
echo   https://thanzi-api.onrender.com/
echo   https://thanzi-api.onrender.com/docs
echo.
echo 📋 If still not working, check Render logs:
echo   1. Go to dashboard.render.com
echo   2. Click your thanzi-api service
echo   3. Check "Logs" tab for errors
echo   4. Check "Events" tab for deployment status
echo.
pause
