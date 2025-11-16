#!/bin/bash
set -e
sudo apt install -y nginx certbot python3-certbot-nginx
sudo systemctl enable nginx
sudo certbot --nginx -d mychatgpt.pl -d ai.mychatgpt.pl --non-interactive --agree-tos -m admin@mychatgpt.pl
