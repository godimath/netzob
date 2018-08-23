FROM ubuntu:14.04
MAINTAINER godimath <godimath@gmail.com>


RUN apt-get update && apt-get install -y \
    python \
    git-core \
    python-ptrace \
    python-matplotlib \
    strace \
    lsof \
    python-pcapy \
    python-bitarray \
    python-dev \
    python-lxml \
    libjs-sphinxdoc \
    python-sphinx \
    python-gi\
    gir1.2-gtk-3.0\
    python-setuptools \
    graphviz \
    python-babel \
    python-httplib2

RUN mkdir /src

RUN cd /src ; git clone https://github.com/netzob/netzob

RUN cd /src/netzob/netzob ; python setup.py build
