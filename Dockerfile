FROM ubuntu:latest

RUN apt-get update \
    && apt-get -y install pass \
    && useradd -c "Pass User" -m pass \
    && mkdir -p /vault /ssh \
    && chown -R pass:pass /vault /ssh \
    && ln -s /ssh ~pass/.ssh
