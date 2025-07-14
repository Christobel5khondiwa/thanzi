@echo off
echo ========================================
echo   Preparing for Render Deployment
========================================

echo.
echo Step 1: Adding new files for deployment...
git add .

echo.
echo Step 2: Committing Render deployment changes...
git commit -m "Prepare for Render deployment

- Updated thanzi.py to use PORT environment variable
- Added render.yaml configuration
- Updated CORS for production
- Added start.sh script"

echo.
echo Step 3: Pushing to GitHub...
git push origin main

echo.
echo ========================================
echo   Ready for Render Deployment!
========================================
echo.
echo ✅ Your code is now ready for Render deployment
echo.
echo 📋 Next steps:
echo   1. Go to https://render.com
echo   2. Sign up/Login with GitHub
echo   3. Click "New +" and select "Web Service"
echo   4. Connect your repository: thanzi
echo   5. Use these settings:
echo      - Name: thanzi-api
echo      - Environment: Python 3
echo      - Build Command: pip install -r requirements.txt
echo      - Start Command: python thanzi.py
echo.
echo 🔗 Your GitHub repo: https://github.com/Christobel5khondiwa/thanzi
echo.
pause
