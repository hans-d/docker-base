FROM ubuntu:12.04
MAINTAINER Hans Donner <hans.donner@pobox.com> "https://github.com/hans-d

ENV DEBIAN_FRONTEND noninteractive

# using ONBUILD to integrate with build of final image

# base up to date
ONBUILD RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y


# add scripts and install dependencies
ONBUILD ADD scripts /docker/ 
ONBUILD RUN chmod +x /docker/*

# add predefined configuration
ONBUILD ADD etc/. /etc/.

# default entrypoint
ENTRYPOINT ["/docker/start"]
