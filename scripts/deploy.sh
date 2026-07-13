#!/bin/bash

echo "==============================="
echo "Starting Deployment"
echo "==============================="

docker pull Methx18/node-api:latest

docker stop node-api || true

docker rm node-api || true

docker run -d \
  --name node-api \
  --restart unless-stopped \
  -p 3000:3000 \
  Methx18/node-api:latest

docker image prune -f

echo "==============================="
echo "Deployment Completed"
echo "==============================="