#!/bin/sh

cd /usr/sbin
squid3 -k shutdown
squid3 -N -d1
