#!/bin/bash
# Cross-platform GitHub Push Setup
# Works on Windows (PowerShell), Mac, and Linux

echo "🚀 Copilot Learning Lab - GitHub Push Setup"
echo "==========================================="
echo ""
echo "This script will push your repository to GitHub."
echo ""
echo "⚠️  REQUIRED BEFORE CONTINUING:"
echo "1. Go to https://github.com/new"
echo "2. Create a new repository:"
echo "   - Name: copilot-learning-lab"
echo "   - Make it PUBLIC"
echo "   - DO NOT initialize with README/license/.gitignore"
echo "   - Click 'Create repository'"
echo ""
echo "3. Have your GitHub username ready"
echo ""

read -p "Enter your GitHub username: " username

if [ -z "$username" ]; then
    echo "❌ GitHub username is required!"
    exit 1
fi

echo ""
echo "✅ Pushing to: https://github.com/$username/copilot-learning-lab.git"
echo ""

# Ensure we're in the right directory
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository!"
    exit 1
fi

# Remove existing origin if it exists
git remote remove origin 2>/dev/null

# Add the new remote
git remote add origin "https://github.com/$username/copilot-learning-lab.git"

# Ensure we're on main branch
git branch -M main

# Push to GitHub
echo "📤 Pushing repository to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Your repository is now on GitHub!"
    echo ""
    echo "📍 Repository URL: https://github.com/$username/copilot-learning-lab"
    echo ""
    echo "📝 Next steps:"
    echo "   1. Add topics to your repo (Settings → Topics):"
    echo "      - copilot, cli, learning, beginner-friendly"
    echo "   2. Create a Release and upload the ZIP file"
    echo "   3. Share the GitHub link with the world!"
else
    echo ""
    echo "❌ Push failed. Check your GitHub credentials."
    echo "💡 Tip: Use a personal access token if password doesn't work."
    echo "   See: https://github.com/settings/personal-access-tokens"
fi
