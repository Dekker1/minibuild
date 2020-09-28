FROM ubuntu:rolling
ENV TZ=Australia/Melbourne
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    clang \
    clang-tidy \
    cmake \
    curl \
    git \
    ninja-build \
    unzip \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*
