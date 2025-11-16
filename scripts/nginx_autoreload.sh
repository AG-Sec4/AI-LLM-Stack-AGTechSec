#!/bin/bash
if nginx -t; then
    systemctl reload nginx
    echo "Nginx reloaded successfully."
else
    echo "Nginx config error. Not reloaded."
fi
