#!/usr/bin/env bash

CWD=$(readlink -e "$(dirname "$0")")
cd "$CWD"/.. || exit $?

source docker/common.sh

WORKSPACE="$(pwd)"

docker run \
    -e UNAME="${UNAME:-$(id -un)}" \
    -v "${WORKSPACE}:/workspace/${WORKSPACE}}" \
    -w "/workspace/${WORKSPACE}" \
    --net=host \
    --rm \
    -it \
    "${DOCKER_TAG}" \
    "$@" || exit $?
