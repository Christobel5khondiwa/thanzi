# Fix Git issues and complete the push
Write-Host "🔧 Fixing Git issues..." -ForegroundColor Yellow

# Check current status
Write-Host "`nChecking git status..." -ForegroundColor Cyan
git status

# Try to commit again with a shorter message
Write-Host "`nAttempting to commit..." -ForegroundColor Cyan
git commit -m "Initial commit: Disease Prediction API"

# Check if we're on master or main branch
Write-Host "`nChecking current branch..." -ForegroundColor Cyan
git branch

# Try to rename branch to main if needed
Write-Host "`nRenaming branch to main..." -ForegroundColor Cyan
git branch -M main

# Try to push again
Write-Host "`nPushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

Write-Host "`n✅ Git operations completed!" -ForegroundColor Green
Write-Host "Check your repository at: https://github.com/Christobel5khondiwa/thanzi" -ForegroundColor Blue
