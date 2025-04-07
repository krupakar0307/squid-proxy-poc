# squid-proxy-poc/Dockerfile

FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y squid curl && \
    mkdir -p /var/spool/squid && \
    chown -R proxy:proxy /var/spool/squid

COPY squid.conf /etc/squid/squid.conf

CMD ["squid", "-N", "-d", "1"]

