FROM alpine:3.24

LABEL org.opencontainers.image.source="https://github.com/silicat/tinyproxy"

RUN apk add --no-cache tinyproxy

ENTRYPOINT ["tinyproxy"]
CMD ["-d", "-c", "/etc/tinyproxy/tinyproxy.conf"]
