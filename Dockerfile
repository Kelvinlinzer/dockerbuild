
FROM ubuntu:16.04

MAINTAINER Qiang Li <lqecnu@gmail.com>

RUN apt-get update \
    && apt-get install -y vim

CMD '/bin/bash'