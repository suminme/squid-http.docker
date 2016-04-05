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
ADD execute.sh $ENV_PATH/bin/execute.sh
RUN chmod 777 $ENV_PATH/bin/*.sh

# Expose ports
EXPOSE 8080
