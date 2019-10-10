#!/bin/bash
GIT_REPO_DIR=${PWD}
HOST_GIT_REPO_DIR=${PWD}
CCUTIL_CMD="ccutil compile --lang en_US --type asciidoc --main-file $1/master.adoc"
DOCKER_OPT="--privileged -ti --rm"

docker run  $DOCKER_OPT -v $GIT_REPO_DIR:$GIT_REPO_DIR levccutil:latest /bin/bash -c "cd $HOST_GIT_REPO_DIR; ls; $CCUTIL_CMD"
