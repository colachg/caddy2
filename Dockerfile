ARG CADDY=caddy:2.6.1

FROM $CADDY-builder AS builder
RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/alidns \
    --with github.com/caddy-dns/dnspod

FROM $CADDY
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
