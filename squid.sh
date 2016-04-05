#!/bin/sh

#conf
cd /etc/squid3
rm -rf squid.conf

echo "http_port 3128
http_access allow localhost
http_access allow all
"  >> /etc/squid3/squid.conf

#restart
cd /usr/sbin
squid3 -k shutdown
squid3 -N -d1
