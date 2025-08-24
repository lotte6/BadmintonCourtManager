#!/bin/bash

# SSH GitHub Push for BadmintonCourtManager
# Automatically detects GitHub username and pushes via SSH

REPO_NAME="BadmintonCourtManager"

echo "🏸 BadmintonCourtManager - SSH GitHub Push"
echo "========================================="
echo ""

# Test SSH connection and get username
echo "🔐 Testing SSH connection to GitHub..."
SSH_TEST=$(ssh -T git@github.com 2>&1)
if [[ $SSH_TEST == *"successfully authenticated"* ]]; then
    GITHUB_USERNAME=$(echo "$SSH_TEST" | grep -o "Hi [^!]*" | cut -d' ' -f2)
    echo "✅ SSH authentication successful!"
    echo "👤 GitHub username: $GITHUB_USERNAME"
else
    echo "❌ SSH authentication failed!"
    echo "Please make sure your SSH key is added to GitHub."
    echo "Output: $SSH_TEST"
    exit 1
fi

echo ""
echo "📋 Repository details:"
echo "- Name: $REPO_NAME"
echo "- Username: $GITHUB_USERNAME"
echo "- SSH URL: git@github.com:$GITHUB_USERNAME/$REPO_NAME.git"
echo ""

# Remove existing remote if it exists
if git remote get-url origin >/dev/null 2>&1; then
    echo "🔗 Removing existing remote..."
    git remote remove origin
fi

# Add SSH remote
echo "🔗 Adding SSH remote..."
git remote add origin git@github.com:$GITHUB_USERNAME/$REPO_NAME.git

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main

# Push to GitHub
echo "🚀 Pushing to GitHub via SSH..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo "🌐 Repository URL: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
    echo ""
    echo "📋 Repository is now live with:"
    echo "- Complete badminton management system"
    echo "- Bilingual documentation (English/Chinese)"
    echo "- Single HTML file application"
    echo "- All source files and documentation"
    echo ""
    echo "🎉 Project BadmintonCourtManager is now on GitHub!"
else
    echo ""
    echo "❌ Push failed!"
    echo "💡 Make sure the repository exists on GitHub:"
    echo "1. Go to https://github.com/new"
    echo "2. Repository name: $REPO_NAME"
    echo "3. Make it public/private as desired"
    echo "4. DO NOT initialize with README, .gitignore, or license"
    echo "5. Then run this script again"
fi
