FROM debian:jessie
MAINTAINER Tomasz Maczukin "tomasz@maczukin.pl"

# SYSTEM PREPARE
ENV DEBIAN_FRONTEND noninteractive
RUN echo "APT::Install-Recommends 0;" >> /etc/apt/apt.conf.d/01norecommends && \
        echo "APT::Install-Suggests 0;" >> /etc/apt/apt.conf.d/01norecommends
RUN apt-get update && apt-get upgrade -y # update_20150309224519
RUN apt-get install -y wget curl ca-certificates && apt-get clean

