#!/bin/bash

REPO_DIR="/var/www/laravel-project"

cd "$REPO_DIR" || exit

if [[ -n $(git status --porcelain) ]]; then
 
 git add .

  git commit -m "Auto-commit: $(date)"

  git push origin main
else
  echo "No changes to commit on $(date)"
fi
