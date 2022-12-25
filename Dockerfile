FROM ubuntu:trusty

RUN sudo apt-get -y update && sudo apt-get -y upgrade && \
  sudo apt-get install -y sqlite3 libsqlite3-dev

WORKDIR /usr/src/app

COPY ./ ./

ENTRYPOINT [ "sqlite3" ]