#!/bin/bash

cd /var/www/laravel-project || exit

if git pull origin master; then
    echo "Git pulling every 1 minute started."
else
    echo "Error: Git pull failed."
fi
