FROM ubuntu:14.04
MAINTAINER godimath <godimath@gmail.com>


RUN apt-get update && apt-get install -y \
    python3 \
    git-core \
    python3-dev \
    python3-setuptools \
    build-essential \
    libpcap-dev \
    python-sphinx 

RUN mkdir /src

RUN cd /src ; git clone https://github.com/netzob/netzob

RUN cd /src/netzob/netzob ; python3 setup.py install
