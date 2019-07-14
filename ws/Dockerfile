# Important: keep the Dockerfile in a directory by itself
# Why? There is a concept of a "context" when the docker build command
# is executed. It is run by the Docker daemon and the process sends the etire
# directory and any subdirectories to the daemon. In summary, include only
# the files needed for building the Dockerfile.
# Reference: https://docs.docker.com/engine/reference/builder/#usage

# A minimal Docker image based on Alpine Linux with a complete package index and only 5 MB in size!
# https://hub.docker.com/_/alpine/
FROM ubuntu:18.04

# Use Dockerfile Best Practices
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices

# update system and install stuff
RUN apt-get update && apt-get install -y \
  vim \
  build-essential \
  curl \
  git

# Install nvm
# About nvm: https://github.com/creationix/nvm
ENV NVM_DIR /usr/local/nvm
ENV NODE_LTS dubnium
ENV NODE_VERSION 10.16.0

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash \
  && . $NVM_DIR/nvm.sh \
  && nvm install --lts=$NODE_LTS \
  && nvm alias default $NODE_VERSION \
  && nvm use default
