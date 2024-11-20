#!/bin/bash

export MYSQL_PWD='new_password'

if mysqldump -u admin laravel_db > /var/www/laravel-project/database/_$(date +\%F).sql; then
    echo "Backup every 24 hours started successfully."
else
    echo "Error: Backup failed."
fi
