#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-netsispay/netsisd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/netsisd docker/bin/
cp $BUILD_DIR/src/netsis-cli docker/bin/
cp $BUILD_DIR/src/netsis-tx docker/bin/
strip docker/bin/netsisd
strip docker/bin/netsis-cli
strip docker/bin/netsis-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
