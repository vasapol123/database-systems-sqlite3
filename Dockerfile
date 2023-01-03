FROM ubuntu:jammy

RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -y update && apt-get -y upgrade && \
  apt-get install -y sqlite3 libsqlite3-dev

WORKDIR /usr/src/app

COPY ./ ./

ENTRYPOINT [ "sqlite3" ]