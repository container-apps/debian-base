ARG BASE_IMAGE_VERSION=bullseye-slim

FROM debian:${BASE_IMAGE_VERSION}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  git \
  gnupg \
  --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*
