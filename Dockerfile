# Container
FROM ubuntu:14.04

# Author
MAINTAINER SUMIN "dev@sumin.me"

# Update system
RUN apt-get update
RUN apt-get -y install squid

#Config
ADD squid.conf /etc/squid3/squid.conf
RUN service squid3 restart

# Expose ports
EXPOSE 8080
