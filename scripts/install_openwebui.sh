#!/bin/bash
set -e
docker run -d --name openwebui --gpus all --restart unless-stopped -p 3000:8080 ghcr.io/open-webui/open-webui:main
