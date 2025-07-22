FROM ubuntu:latest

COPY entry /entry
COPY pass.sh pass.csh /etc/profile.d

RUN apt-get update \
    && apt-get -y install pass emacs-nox vim script \
    && mkdir -p /vault /home

ENTRYPOINT [ "/entry" ]
