#!/bin/bash

echo "Building image..."
docker_image=$(docker build -q .)
echo "Done"

echo "Running image..."
docker run --rm -it -v $(pwd)/.env:/usr/src/app/.env $docker_image

echo "Removing image..."
docker rmi $docker_image
echo "Done"
