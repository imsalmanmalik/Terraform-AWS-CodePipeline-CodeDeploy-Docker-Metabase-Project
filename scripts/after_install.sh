#!/bin/bash

# Change directory to where docker-compose.yml is located
cd /home/ubuntu/newdocker-project

# Build Docker images using Docker Compose
docker-compose -f docker-compose.yml build

# Push Docker images to Docker Hub
docker-compose -f docker-compose.yml push
