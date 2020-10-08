FROM debian:stable-slim

MAINTAINER Pradeep Kumar AV

WORKDIR /

RUN apt-get update && apt-get install wget -y

RUN wget https://github.com/vmware-tanzu/octant/releases/download/v0.16.0/octant_0.16.0_Linux-64bit.tar.gz

RUN tar -xvf octant_0.16.0_Linux-64bit.tar.gz

ENV OCTANT_LISTENER_ADDR=0.0.0.0:80

ENTRYPOINT ["/octant_0.16.0_Linux-64bit/octant"]
