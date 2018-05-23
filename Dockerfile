FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive
ENV DIST xenial
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y git-buildpackage dh-make cdbs
WORKDIR /mnt

