ARG BASE_IMAGE_VERSION=bullseye-slim

FROM debian:${BASE_IMAGE_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -yq && apt-get install -yq \
  apt-transport-https \
  ca-certificates \
  curl \
  git \
  gnupg \
  --no-install-recommends \
  --no-install-suggests \
  && rm -rf /var/lib/apt/lists/*
