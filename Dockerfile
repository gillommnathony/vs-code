FROM kalilinux/kali:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl

ENV DEBIAN_FRONTEND=noninteractive


#ENV VER=v4.20.0

RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --link

