#!/bin/bash

# Ex-3.3 builder. Clones a source from github, builds it to a docker image inside of a builder container
# and pushes to hub.docker.com
# Make sure there is a Dockerfile in the root of a source folder.
# Files:
# -publish.sh -> main script
# -build.sh -> a script used inside a builder container to build the docker image and to push it to hub.docker.com
# -Dockerfile -> builder Dockerfile

# Usage:
# Assign a source git repo of your choise to URL-variable and run the script. Provide dockerhub credentials
# when prompted.

#URL="https://github.com/roninjs/docker-hello-world.git"
#URL="https://github.com/docker-hy/frontend-example-docker.git"
#URL="https://github.com/docker-hy/ml-kurkkumopo-frontend.git"
URL="https://github.com/docker-hy/ml-kurkkumopo-training.git"
BUILDER_EXISTS=$(docker images --filter=reference='builder' --format "{{.Repository}}")

echo "Cloning $URL...";
git clone $URL;

SRC=$(basename "`ls -d */`");
BUILD_PATH=$(pwd)/$SRC
echo "Searching for local builder container..."
if [ -z "$BUILDER_EXISTS" ]
then
  echo "Builder container doesn't exist. Building..."
  docker build -t builder .
else
  echo "Found."
fi

docker run -it \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $BUILD_PATH:/app/$SRC \
  builder


echo "Deleting $BUILD_PATH";
rm -rf $BUILD_PATH;
