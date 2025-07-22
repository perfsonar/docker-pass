FROM ubuntu:latest

COPY entry /entry

RUN apt-get update \
    && apt-get -y install pass \
    && mkdir -p /vault /home

ENTRYPOINT [ "/entry" ]
