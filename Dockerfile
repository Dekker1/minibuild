FROM debian:stable-slim
RUN apt-get update -y && apt-get install -y \
    bison \
    build-essential \
    ccache \
    cmake \
    curl \
    flex \
    gcc \
    git \
    subversion \
    unzip \
    zlib1g-dev
