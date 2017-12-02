FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git \
    libreadline-dev \
    libconfig-dev \
    libssl-dev \
    lua5.2 \
    liblua5.2-dev \
    libevent-dev \
    libjansson-dev \
    libpython-dev

RUN mkdir /tg
WORKDIR /tg

RUN git clone --recursive https://github.com/vysheng/tg.git .

RUN ./configure
RUN make
