FROM ubuntu:latest

COPY entry /entry
COPY pass.sh pass.csh /etc/profile.d

# Util-linux is for script.
RUN apt-get update \
    && apt-get -y install pass emacs-nox vim util-linux \
    && mkdir -p /vault /home

ENTRYPOINT [ "/entry" ]
