#!/bin/bash

# Quick GitHub Push for BadmintonCourtManager
# Usage: ./quick_push.sh YOUR_GITHUB_USERNAME

if [ $# -eq 0 ]; then
    echo "Usage: ./quick_push.sh YOUR_GITHUB_USERNAME"
    echo "Example: ./quick_push.sh john_doe"
    exit 1
fi

GITHUB_USERNAME=$1
REPO_NAME="BadmintonCourtManager"

echo "🏸 Pushing BadmintonCourtManager to GitHub..."
echo "Username: $GITHUB_USERNAME"
echo "Repository: $REPO_NAME"
echo ""

# Remove existing remote if it exists
git remote remove origin 2>/dev/null

# Add new remote
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# Set main branch and push
git branch -M main
echo "🚀 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Success! Repository pushed to GitHub"
    echo "🌐 URL: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
    echo ""
    echo "📋 Don't forget to:"
    echo "1. Create the repository on GitHub first: https://github.com/new"
    echo "2. Repository name: $REPO_NAME"
    echo "3. Make it public/private as desired"
    echo "4. DO NOT initialize with README"
else
    echo ""
    echo "❌ Push failed. Make sure:"
    echo "1. Repository exists on GitHub: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
    echo "2. You have push access"
    echo "3. Your credentials are correct"
fi
