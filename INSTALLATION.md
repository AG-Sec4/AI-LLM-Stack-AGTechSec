# 📦 Installation Guide — AI-LLM-Stack-AGTechSec

## 1. Update System
sudo apt update && sudo apt upgrade -y

## 2. Install NVIDIA Drivers
sudo ubuntu-drivers autoinstall
sudo reboot

## 3. Install Docker + NVIDIA Toolkit
curl -fsSL https://get.docker.com | sudo sh
sudo systemctl enable docker
sudo apt install -y nvidia-container-toolkit
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker

## 4. Install Ollama
curl https://ollama.ai/install.sh | sh
ollama run llama3

## 5. Deploy OpenWebUI
docker run -d --name openwebui --gpus all --restart unless-stopped -p 3000:8080 ghcr.io/open-webui/open-webui:main

## 6. Deploy InvokeAI
docker run -d --name invokeai --gpus all --restart unless-stopped -p 9090:9090 invokeai/invokeai:latest

## 7. Configure Nginx + SSL
Includes reverse proxy, domains, certificates, hardening.
