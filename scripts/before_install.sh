#!/bin/bash
# Stop any running Docker containers
docker-compose -f /home/ubuntu/newdocker-project/docker-compose.yml down || true
