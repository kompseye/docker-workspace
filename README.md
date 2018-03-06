# About
This repo contains the necessary files to provide a developer with a Docker-based
workspace.

# Why?
The benefits to the developer are a Controlled Development Environment:
* Which is not influenced by host machine environment variables
* Which is not impacted by host machine updates to developer tools

# How to get started?
* `source myMachine/.bashrc`
* Build the Docker image: `build`
* Confirm new Docker images: `docker images`
  * Two new (or updated) entries: docker-workspace and ubuntu
* Run the Docker image: `run`
* Now you are in a shell for the Ubuntu container!
* Confirm the aliases from `myContainer/.bashrc` file in this repo: `alias`
  * `meh` is one of them
