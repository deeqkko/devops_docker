#!/bin/bash

# Ex-3.3. The file is copied in the builder container.

SRC=$(basename "`ls -d */`" | xargs);
BUILD_PATH=$(pwd)/$SRC;
echo "Log in to hub.docker.com with your credentials..."
read -p "Username: " DOCKER_USER;
read -s -p "Password: " DOCKER_PASS;
echo $DOCKER_PASS | docker login --username $DOCKER_USER --password-stdin
echo "Building $DOCKER_USER/$SRC...";


docker build -t $DOCKER_USER/$SRC $BUILD_PATH;
docker push "$DOCKER_USER/$SRC";
docker rmi --force $DOCKER_USER/$SRC
docker logout;
