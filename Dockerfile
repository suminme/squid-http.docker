# Container
FROM ubuntu:14.04

# Author
MAINTAINER SUMIN "dev@sumin.me"

# Update system
RUN apt-get update
RUN apt-get -y install squid

#Config
ADD squid.conf /etc/squid3/squid.conf

# execute.sh
ADD squid.sh /opt/bin/squid.sh
RUN chmod 777 /opt/bin/*.sh
ENV PATH $PATH:/opt/bin/

# Expose ports
EXPOSE 3128
