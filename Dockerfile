FROM alpine:3.16
LABEL maintainer="tchartron@vinatis.com"
RUN apk update \
    && apk --no-cache add dnsmasq tini
COPY dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 53/udp

ENTRYPOINT ["tini", "--", "dnsmasq", "--no-daemon", "--no-resolv"]
