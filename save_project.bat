@echo off
echo ========================================
echo   Saving Thanzi Project
========================================

echo.
echo Step 1: Adding all files...
git add .

echo.
echo Step 2: Committing final working version...
git commit -m "Final working version - Thanzi Disease Prediction API

✅ Successfully deployed to Render
✅ API live at: https://thanzi-api.onrender.com
✅ All endpoints working:
   - Health check: GET /
   - Disease prediction: POST /predict  
   - API documentation: GET /docs
✅ No confidence scores in response
✅ CORS enabled for frontend integration
✅ Production-ready deployment

Features:
- FastAPI-based disease prediction system
- Machine learning model for symptom-based diagnosis
- Clean JSON responses without confidence values
- Complete documentation and deployment files
- Ready for frontend integration"

echo.
echo Step 3: Pushing to GitHub...
git push origin main

echo.
echo ========================================
echo   Project Saved Successfully!
========================================
echo.
echo ✅ Your Thanzi Disease Prediction API is saved:
echo.
echo 📂 GitHub Repository:
echo    https://github.com/Christobel5khondiwa/thanzi
echo.
echo 🌐 Live API:
echo    https://thanzi-api.onrender.com
echo.
echo 📖 API Documentation:
echo    https://thanzi-api.onrender.com/docs
echo.
echo 🎯 Ready for:
echo    ✅ Frontend integration
echo    ✅ Production use
echo    ✅ Further development
echo.
pause
