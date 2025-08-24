#!/bin/bash

# BadmintonCourtManager - GitHub Push Script
# This script helps you push the project to GitHub

echo "🏸 BadmintonCourtManager - GitHub Push Setup"
echo "============================================="
echo ""

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

echo "📋 Current project status:"
echo "- Project name: BadmintonCourtManager"
echo "- Files ready for GitHub:"
ls -la *.html *.md 2>/dev/null | grep -v "^total"
echo ""

echo "🔧 To push to GitHub, follow these steps:"
echo ""
echo "1. Create a new repository on GitHub:"
echo "   - Go to https://github.com/new"
echo "   - Repository name: BadmintonCourtManager"
echo "   - Description: A comprehensive web-based badminton match management system"
echo "   - Make it Public or Private (your choice)"
echo "   - DO NOT initialize with README, .gitignore, or license"
echo ""

echo "2. After creating the repository, run these commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/BadmintonCourtManager.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "   (Replace YOUR_USERNAME with your actual GitHub username)"
echo ""

echo "3. Your repository will be available at:"
echo "   https://github.com/YOUR_USERNAME/BadmintonCourtManager"
echo ""

echo "✅ Project is ready for GitHub!"
echo "📁 All files are committed and ready to push"

# Show current git status
echo ""
echo "📊 Current git status:"
git status --short
echo ""
echo "📝 Recent commits:"
git log --oneline -3
