FROM alpine:3.11

ARG VERSION=2.0.35-r0

LABEL maintainer="lgian" \
        org.label-schema.name="DNSCrypt-Proxy" \
        org.label-schema.version=$VERSION

ENV LOCAL_PORT 53

RUN set -xe && \
    apk add dnscrypt-proxy=$VERSION

USER dnscrypt

EXPOSE $LOCAL_PORT/tcp $LOCAL_PORT/udp

CMD /usr/bin/dnscrypt-proxy \
    -config /dnscrypt-proxy.toml
