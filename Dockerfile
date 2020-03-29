FROM ubuntu:latest as builder
LABEL maintainer="kgruber1@emich.edu"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y wget

RUN mkdir -p /tmp/build

RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/fahclient_7.5.1_amd64.deb

RUN mkdir -p /etc/fahclient/ && touch /etc/fahclient/config.xml

COPY config.xml /etc/fahclient/config.xml

RUN dpkg -i --force-depends fahclient_7.5.1_amd64.deb

WORKDIR /home/root

RUN apt-get -qq remove -y wget ca-certificates libpsl5 libssl1.1 openssl publicsuffix && apt-get -qq autoremove -y && rm -rf /tmp/* /var/log/* /var/lib/apt/ /var/cache/apt/

CMD ["/usr/bin/FAHClient", "--gui-enabled=false", "--config", "/etc/fahclient/config.xml"]
