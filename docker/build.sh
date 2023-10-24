#!/bin/bash

# Define the name of the Docker image
IMAGE_NAME="swarm-quicklooks"
# Get the current date in YYYY-MM-DD format
CURRENT_DATE=$(date +'%Y-%m-%d')

# Build the Docker image using the Dockerfile
docker build -t $IMAGE_NAME:$CURRENT_DATE .
