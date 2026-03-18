#!/bin/bash

# 1. Define the target (our Docker dashboard)
URL="http://localhost:8080"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# 2. Check the HTTP status code (Silent mode, only return the code)
STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

# 3. Decision Time: Is the site healthy?
if [ "$STATUS" -eq 200 ]; then
    echo "[$TIMESTAMP] SUCCESS: Dashboard is UP (Status 200)" >> uptime.log
else
    echo "[$TIMESTAMP] ALERT: Dashboard is DOWN (Status $STATUS). Attempting restart..." >> uptime.log
    # 4. Self-Healing: Restart the container if it's down
    sudo docker compose up -d
fi
