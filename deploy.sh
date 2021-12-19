#!/bin/sh
IMAGE_TAG="gilesfa/giles_mydjango:latest"

docker stop mydjango
docker rm mydjango
docker run -d --name mydjango -p 8000:8000 $IMAGE_TAG
