server {
    server_name ai.mychatgpt.pl;
    listen 80;
    listen [::]:80;

    return 301 https://$host$request_uri;
}

server {
    server_name ai.mychatgpt.pl;
    listen 443 ssl http2;
    listen [::]:443 ssl http2;

    ssl_certificate /etc/letsencrypt/live/ai.mychatgpt.pl/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/ai.mychatgpt.pl/privkey.pem;

    include /etc/nginx/snippets/security-headers.conf;

    location / {
        proxy_pass http://127.0.0.1:9090;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}
