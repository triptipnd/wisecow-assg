#!/bin/bash

# URL to check
APP_URL="http://localhost:4499"

# Make HTTP request
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

if [ "$HTTP_STATUS" -eq 200 ]; then
    echo "Application is UP. Status code: $HTTP_STATUS"
else
    echo "Application is DOWN. Status code: $HTTP_STATUS"
fi
