#!/bin/bash

# BadmintonCourtManager - Automated GitHub Push Script
# This script automatically creates and pushes to GitHub

echo "🏸 BadmintonCourtManager - Automated GitHub Push"
echo "==============================================="
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

# Get GitHub username
echo "🔧 GitHub Setup:"
read -p "Enter your GitHub username: " GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ Error: GitHub username is required"
    exit 1
fi

echo ""
echo "📝 Repository details:"
echo "- Name: BadmintonCourtManager"
echo "- Username: $GITHUB_USERNAME"
echo "- URL: https://github.com/$GITHUB_USERNAME/BadmintonCourtManager"
echo ""

# Check if remote already exists
if git remote get-url origin >/dev/null 2>&1; then
    echo "⚠️  Remote 'origin' already exists. Removing it..."
    git remote remove origin
fi

# Add remote
echo "🔗 Adding GitHub remote..."
git remote add origin https://github.com/$GITHUB_USERNAME/BadmintonCourtManager.git

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main

# Push to GitHub
echo "🚀 Pushing to GitHub..."
echo ""
echo "Note: You may be prompted for your GitHub credentials."
echo "If you have 2FA enabled, use a Personal Access Token instead of password."
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo "🌐 Repository URL: https://github.com/$GITHUB_USERNAME/BadmintonCourtManager"
    echo ""
    echo "📋 Next steps:"
    echo "1. Visit your repository on GitHub"
    echo "2. Add repository topics: badminton, sports-management, web-app, javascript"
    echo "3. Update repository description if needed"
    echo "4. Share the repository link!"
else
    echo ""
    echo "❌ Failed to push to GitHub"
    echo "💡 Possible solutions:"
    echo "1. Make sure the repository exists on GitHub"
    echo "2. Check your GitHub credentials"
    echo "3. If you have 2FA, use a Personal Access Token"
    echo ""
    echo "🔧 Manual setup:"
    echo "1. Go to https://github.com/new"
    echo "2. Create repository: BadmintonCourtManager"
    echo "3. Run: git push -u origin main"
fi

echo ""
echo "📊 Current git status:"
git status --short
echo ""
echo "📝 Recent commits:"
git log --oneline -3
