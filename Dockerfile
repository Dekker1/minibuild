FROM alpine:latest
RUN apk add --no-cache \
    clang-extra-tools \
    cmake \
    git \
    g++ \
    ninja
