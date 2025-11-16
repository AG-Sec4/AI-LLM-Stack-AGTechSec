#!/bin/bash
while true; do
    if ! systemctl is-active --quiet nginx; then
        echo "Nginx down — restarting..."
        systemctl restart nginx
    fi
    sleep 10
done
