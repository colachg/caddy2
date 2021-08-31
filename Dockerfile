FROM caddy:2.4.4-builder AS builder
RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/alidns

FROM caddy:2.4.4
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
