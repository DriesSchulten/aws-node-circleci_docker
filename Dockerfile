FROM circleci/node:4

MAINTAINER Dries Schulten

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /
RUN sudo apt-get install -y python-pip && \
 		sudo pip install -q awscli --upgrade && \
 		sudo rm -rf /var/lib/apt/lists/*
