FROM ubuntu:14.04
MAINTAINER Hans Donner <hans.donner@pobox.com> "https://github.com/hans-d"

ENV DEBIAN_FRONTEND noninteractive

# base up to date
RUN apt-get update && apt-get upgrade -y

