FROM caddy:2.4.6-builder AS builder
RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/alidns \
    --with github.com/caddy-dns/dnspod

FROM caddy:2.4.6
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
