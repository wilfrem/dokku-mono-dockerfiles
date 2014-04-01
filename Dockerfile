FROM ubuntu:12.04
MAINTAINER wilfrem

RUN apt-get -y install wget
RUN wget http://download.opensuse.org/repositories/home:tpokorra:mono/xUbuntu_12.04/Release.key -O- | apt-key add -
RUN apt-get remove -y --auto-remove wget
RUN sh -c "echo 'deb http://download.opensuse.org/repositories/home:/tpokorra:/mono/xUbuntu_12.04/ /' >> /etc/apt/sources.list.d/mono-opt.list"
RUN apt-get update
RUN apt-get -y install mono-opt
