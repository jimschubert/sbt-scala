#!/bin/sh

# FROM: https://nmap.org/ncat/guide/ncat-simple-services.html
# The qotd (quote of the day) service is defined in RFC 865. 
# When a connection is made to TCP or UDP port 17, it sends 
# back a short message, ignoring any input. Ncat can do this 
# by invoking a program that generates messages. A traditional 
# choice is /usr/games/fortune, though there are many possibilities. 
# /usr/bin/uptime, for example, could be useful.
exec ncat -l 17 --keep-open --send-only --exec "/foo.sh"
