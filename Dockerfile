FROM openjdk:8-jdk-buster

USER root
RUN useradd -ms /bin/bash pngcraft

USER pngcraft
RUN mkdir /home/pngcraft/server
WORKDIR /home/pngcraft/server

ENTRYPOINT bash
CMD []

