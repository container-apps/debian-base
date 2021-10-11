ARG BASE_IMAGE_VERSION=bullseye-slim

FROM debian:${BASE_IMAGE_VERSION}

ENV TZ=Europe/Berlin
ENV DEBIAN_FRONTEND=noninteractive

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
  echo $TZ > /etc/timezone

RUN apt-get update -yq && apt-get install -yq \
  apt-transport-https \
  ca-certificates \
  curl \
  git \
  gnupg \
  software-properties-common \
  --no-install-recommends \
  --no-install-suggests \
  && rm -rf /var/lib/apt/lists/*
