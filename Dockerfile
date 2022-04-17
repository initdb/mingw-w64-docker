FROM ubuntu:20.04
LABEL maintainer="Benedict Schwind <benedict.schwind@stud.th-rosenheim.de>"
LABEL description="Image for building CMake & GNU ARM eabi applications"
LABEL title=mingw-w64
LABEL version=1.0

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y upgrade && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get -y update && \
    apt-get -y install \
    make \
    libtool \
    m4 \
    pkg-config \ 
    tcl \
    texinfo\
    autotools-dev \
    autoconf \
    git \ 
    mingw-w64 \
    wine && \
    apt-get clean
