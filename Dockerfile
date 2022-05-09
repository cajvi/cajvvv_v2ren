##

FROM alpine:latest

WORKDIR /root
COPY v2.sh /root/v2.sh

RUN set -ex \
    && apk add --no-cache tzdata openssl ca-certificates \
    && mkdir -p /etc/v2ray /usr/local/share/v2ray /var/log/v2ray \
    && chmod +x /root/v2.sh

CMD [ "/root/v2.sh" ]
