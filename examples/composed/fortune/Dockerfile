FROM alpine

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories

RUN apk update && apk add --no-cache nmap-ncat fortune

COPY script/docker-entrypoint.sh /docker-entrypoint.sh
COPY script/foo.sh /foo.sh

ENTRYPOINT /docker-entrypoint.sh
