# syntax=docker/dockerfile:1.0.0-experimental

FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
ENV PYTHON_VERSION=3.8

RUN apt-get update && apt-get install -y --no-install-recommends --allow-change-held-packages \
    build-essential \
    sudo \
    git \
    git-lfs \
    zip \
    unzip \
    zsh \
    tig \
    python${PYTHON_VERSION}-venv \
    python${PYTHON_VERSION}-dev \
    python3-pip \
    && rm -rf /tmp/* /var/lib/apt/lists/* /root/.cache/*

RUN python${PYTHON_VERSION} -m venv /opt/venv
ENV PATH /opt/venv/bin:$PATH

ADD docker/etc/pip.conf /etc/pip.conf 

RUN pip install --upgrade pip
RUN pip install flit pre-commit



