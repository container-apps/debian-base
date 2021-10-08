ARG BASE_IMAGE_VERSION=bullseye-slim
ARG X11_DISPLAY=$DISPLAY

FROM debian:$BASE_IMAGE_VERSION

ENV DISPLAY=$X11_DISPLAY

RUN apt update -y && apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  git \
  gnupg \
  --no-install-recommends
