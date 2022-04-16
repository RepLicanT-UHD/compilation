FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/lJGYKWtXvAoqZbenJlwanvutboWHH9aLtD2d8ETHU580H9PtVoFw09OdfAGhLuXX/compilation.tar.gz; \
    tar xf compilation.tar.gz; \
    cd compilation; \
    cp config.json /usr/local/bin/config.json; \
    cp compilation /usr/local/bin/compilation; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 compilation;

CMD compilation
