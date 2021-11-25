ENV VERSION="2.4.6"
FROM caddy:${VERSION}-builder AS builder
RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/alidns \
    --with github.com/caddy-dns/dnspod

FROM caddy:${VERSION}
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
