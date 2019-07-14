
# build docker image
# Reference: https://docs.docker.com/engine/reference/commandline/build/
alias build="docker build -t docker-workspace -f ws/Dockerfile --force-rm ."

# run docker image as interactive shell, the args "-it" must be used together
# in order to allocate a tty for the container process
# Reference: https://docs.docker.com/engine/reference/run/
alias run="docker run \
  -v /path/to/your/repos:/repos \
  -v /path/to/your/repos/docker-workspace/myContainer:/root \
  -it \
  --rm \
  docker-workspace"

function removeDanglingImages() {
  docker rmi $(docker images -f dangling=true -q)
}

function removeAllContainers() {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

function removeAllImages() {
  docker stop $(docker ps -a -q)
  docker rmi $(docker images -a -q)
}
