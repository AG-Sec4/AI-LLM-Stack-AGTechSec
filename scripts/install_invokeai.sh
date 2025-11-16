#!/bin/bash
set -e
docker run -d --name invokeai --gpus all --restart unless-stopped -p 9090:9090 invokeai/invokeai:latest
