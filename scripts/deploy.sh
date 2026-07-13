#!/bin/bash

set -e

echo "======================================"
echo "Starting Deployment"
echo "======================================"

IMAGE="methx18/node-api:latest"
CONTAINER="node-api"

echo "Pulling latest image..."
docker pull $IMAGE

if [ "$(docker ps -aq -f name=$CONTAINER)" ]; then
    echo "Stopping existing container..."
    docker stop $CONTAINER || true

    echo "Removing existing container..."
    docker rm $CONTAINER || true
fi

echo "Starting new container..."

docker run -d \
  --name $CONTAINER \
  --restart unless-stopped \
  -p 3000:3000 \
  $IMAGE

echo "Waiting for application..."

sleep 10

if curl -f http://localhost:3000/health; then
    echo ""
    echo "Deployment Successful ✅"
else
    echo ""
    echo "Deployment Failed ❌"
    exit 1
fi

docker image prune -f

echo "======================================"
echo "Deployment Completed"
echo "======================================"