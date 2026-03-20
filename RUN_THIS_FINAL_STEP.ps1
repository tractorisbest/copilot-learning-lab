#!/usr/bin/env powershell
# Final GitHub Push - Copy and paste your GitHub username below, then run this file

# ⚠️ EDIT THIS LINE WITH YOUR GITHUB USERNAME
$GitHubUsername = "YOUR-GITHUB-USERNAME"  # <-- REPLACE THIS!

# ====================================
# Do not edit below this line
# ====================================

if ($GitHubUsername -eq "YOUR-GITHUB-USERNAME") {
    Write-Host "❌ ERROR: You must edit this script and enter your GitHub username!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Edit line 4: `$GitHubUsername = `"YOUR-GITHUB-USERNAME`"" -ForegroundColor Yellow
    Write-Host "Replace YOUR-GITHUB-USERNAME with your actual GitHub username" -ForegroundColor Yellow
    Write-Host ""
    exit 1
}

Write-Host "🚀 Pushing Copilot Learning Lab to GitHub" -ForegroundColor Cyan
Write-Host "Username: $GitHubUsername" -ForegroundColor Green
Write-Host ""

# Prerequisites check
if (-not (Test-Path ".git")) {
    Write-Host "❌ Not in a git repository!" -ForegroundColor Red
    exit 1
}

# 1. Create GitHub repo first (manual step)
Write-Host "⚠️  PREREQUISITE: Create a GitHub repository first!" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Go to https://github.com/new"
Write-Host "2. Name: copilot-learning-lab"
Write-Host "3. Make it PUBLIC"
Write-Host "4. DO NOT initialize with README/license"
Write-Host "5. Click 'Create repository'"
Write-Host ""
Read-Host "Press Enter when you've created the repository on GitHub"

# 2. Configure git
Write-Host ""
Write-Host "📝 Configuring git remote..." -ForegroundColor Cyan

git remote remove origin 2>$null
git remote add origin "https://github.com/$GitHubUsername/copilot-learning-lab.git"
git branch -M main

# 3. Push to GitHub
Write-Host "📤 Pushing to GitHub (you may be asked for your password or personal access token)..." -ForegroundColor Cyan
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ SUCCESS! Your project is now on GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📍 Repository: https://github.com/$GitHubUsername/copilot-learning-lab" -ForegroundColor Green
    Write-Host ""
    Write-Host "📝 Next steps:" -ForegroundColor Cyan
    Write-Host "   1. Add topics to your repo (Settings → Topics):"
    Write-Host "      - copilot, cli, learning, beginner-friendly"
    Write-Host "   2. Create a Release and upload the ZIP file"
    Write-Host "   3. Share the GitHub link!"
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "❌ Push failed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "💡 Solutions:" -ForegroundColor Yellow
    Write-Host "   1. Check your GitHub username is correct"
    Write-Host "   2. Use a Personal Access Token instead of password:"
    Write-Host "      https://github.com/settings/personal-access-tokens"
    Write-Host "   3. Or use GitHub Desktop for easier authentication"
    Write-Host ""
}
