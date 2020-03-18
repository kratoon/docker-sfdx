FROM ubuntu:19.04

# configure base image
RUN apt-get update && apt-get install -y \
  wget \
  xz-utils \
  && rm -rf /var/lib/apt/lists/*

# install sfdx
WORKDIR /
RUN mkdir /sfdx \
    && wget -qO- https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz | tar xJ -C sfdx --strip-components 1 \
    && /sfdx/install \
    && rm -rf /sfdx

# install jq, git
RUN apt-get update
RUN apt-get -y install jq
RUN apt-get -y install git

# update sfdx
ARG CACHEBUST=1
RUN sfdx update
