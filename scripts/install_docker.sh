#!/bin/bash
set -e
sudo apt update && sudo apt upgrade -y
curl -fsSL https://get.docker.com | sudo sh
sudo systemctl enable docker
