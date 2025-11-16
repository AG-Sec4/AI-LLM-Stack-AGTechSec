# 🛠️ Troubleshooting — AI-LLM-Stack-AGTechSec

## Check Docker
docker ps
docker logs <container>

## Check GPU
nvidia-smi

## Check Nginx
sudo systemctl status nginx
sudo tail -f /var/log/nginx/error.log

## SSL Issues
sudo certbot renew --dry-run

## Container Restart Issues
docker update --restart unless-stopped <container>
