#!/usr/bin/env bash

CWD=$(readlink -e "$(dirname "$0")")
cd "${CWD}/.." || exit $?

source docker/common.sh

DOCKER_BUILDKIT=1 docker build -f docker/Dockerfile \
    --ssh default \
    -t "${DOCKER_TAG}" . || exit $?

docker/run.sh pip freeze --all > docker/requirements-freeze.txt
