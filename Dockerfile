FROM ubuntu:14.04.5
MAINTAINER fy <1424745874@qq.com>
ENV TZ "Asia/Shanghai"
ENV TERM xterm
COPY conf/sources.list /etc/apt/sources.list
COPY conf/.bash_aliases /root/.bash_aliases
RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential && \
    rm -rf /var/lib/apt/lists/*
ENV HOME /root
WORKDIR /root
