# Copilot Learning Lab - GitHub Push Script
# This script will push your local repository to GitHub

Write-Host "🚀 Copilot Learning Lab - GitHub Push Script" -ForegroundColor Cyan
Write-Host "`n⚠️  BEFORE YOU RUN THIS:`n" -ForegroundColor Yellow
Write-Host "1. Create a new repository on GitHub:"
Write-Host "   - Go to https://github.com/new"
Write-Host "   - Name: copilot-learning-lab"
Write-Host "   - Make it PUBLIC"
Write-Host "   - DO NOT initialize with README/license"
Write-Host "   - Click 'Create repository'"
Write-Host "`n2. Have your GitHub username ready"
Write-Host "3. Be ready to enter your GitHub password or personal access token`n"

# Get GitHub username
$username = Read-Host "Enter your GitHub username"

if (-not $username) {
    Write-Host "❌ GitHub username is required!" -ForegroundColor Red
    exit 1
}

Write-Host "`n✅ Pushing to: https://github.com/$username/copilot-learning-lab.git`n" -ForegroundColor Green

# Set the remote origin
git remote remove origin 2>$null  # Remove if it exists
git remote add origin "https://github.com/$username/copilot-learning-lab.git"

# Ensure we're on main branch
git branch -M main

# Push to GitHub
Write-Host "📤 Pushing repository to GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ SUCCESS! Your repository is now on GitHub!" -ForegroundColor Green
    Write-Host "`n📍 Repository URL: https://github.com/$username/copilot-learning-lab" -ForegroundColor Green
    Write-Host "`n📝 Next steps:" -ForegroundColor Cyan
    Write-Host "   1. Add topics to your repo (Settings → Topics):"
    Write-Host "      - copilot"
    Write-Host "      - cli"
    Write-Host "      - learning"
    Write-Host "      - beginner-friendly"
    Write-Host "   2. Create a Release and upload the ZIP"
    Write-Host "   3. Share the link!"
} else {
    Write-Host "`n❌ Push failed. Check your GitHub credentials." -ForegroundColor Red
    Write-Host "💡 Tip: Use a personal access token if password doesn't work." -ForegroundColor Yellow
}
