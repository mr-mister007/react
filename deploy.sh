#!/bin/bash

# Pull the Docker image tarball from GitHub Actions artifact
curl -L -o docker-122image.tar "https://github.com/mr-mister007/react/releases/download/latest/docker-image.tar"

# Load the Docker image
docker load -i docker-image.tar

# Stop and remove the existing container if it exists

docker stop my-react-container122 || true
docker rm your-react-container || false

# Run the new container
docker run -d --name my-new-react-container -p 80:80 your-react-appliction
