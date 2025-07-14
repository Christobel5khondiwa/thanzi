# PowerShell script to push Thanzi project to GitHub
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Pushing Thanzi Project to GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

# Step 1: Initialize Git repository
Write-Host "`nStep 1: Initializing Git repository..." -ForegroundColor Yellow
try {
    git init
    Write-Host "✅ Git repository initialized" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to initialize git: $($_.Exception.Message)" -ForegroundColor Red
}

# Step 2: Add remote repository
Write-Host "`nStep 2: Adding remote repository..." -ForegroundColor Yellow
try {
    git remote add origin https://github.com/Christobel5khondiwa/thanzi.git
    Write-Host "✅ Remote repository added" -ForegroundColor Green
} catch {
    Write-Host "⚠️ Remote might already exist, continuing..." -ForegroundColor Yellow
}

# Step 3: Check git status
Write-Host "`nStep 3: Checking git status..." -ForegroundColor Yellow
git status

# Step 4: Add all files
Write-Host "`nStep 4: Adding all files..." -ForegroundColor Yellow
try {
    git add .
    Write-Host "✅ All files added to staging" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to add files: $($_.Exception.Message)" -ForegroundColor Red
}

# Step 5: Commit changes
Write-Host "`nStep 5: Committing changes..." -ForegroundColor Yellow
$commitMessage = @"
Initial commit: Disease Prediction API

- FastAPI-based disease prediction system
- Machine learning model for symptom-based diagnosis
- Clean API without confidence scores
- CORS enabled for frontend integration
- Includes model files and documentation
"@

try {
    git commit -m $commitMessage
    Write-Host "✅ Changes committed" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to commit: $($_.Exception.Message)" -ForegroundColor Red
}

# Step 6: Push to GitHub
Write-Host "`nStep 6: Pushing to GitHub..." -ForegroundColor Yellow
try {
    git push -u origin main
    Write-Host "✅ Successfully pushed to GitHub!" -ForegroundColor Green
} catch {
    Write-Host "❌ Failed to push: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "You might need to authenticate with GitHub" -ForegroundColor Yellow
}

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "   Push to GitHub Complete!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "`nYour project is now available at:" -ForegroundColor Green
Write-Host "https://github.com/Christobel5khondiwa/thanzi" -ForegroundColor Blue

Read-Host "`nPress Enter to continue..."
