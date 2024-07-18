#!/usr/bin/env bash

REPO_NAME="$(basename "$(git rev-parse --show-toplevel)")"
DOCKER_TAG="${DOCKER_TAG:-"${REPO_NAME}"}"

export REPO_NAME
export DOCKER_TAG
