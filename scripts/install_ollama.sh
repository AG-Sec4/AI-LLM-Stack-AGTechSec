#!/bin/bash
set -e
curl https://ollama.ai/install.sh | sh
ollama run llama3
