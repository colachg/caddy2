[![build-image](https://github.com/colachg/caddy2/actions/workflows/build.yml/badge.svg)](https://github.com/colachg/caddy2/actions/workflows/build.yml)
# caddy2
Caddy v2 with more dns provider plugins.

https://caddy.community/t/how-to-use-dns-provider-modules-in-caddy-2/8148

## [cloudflare](https://github.com/caddy-dns/cloudflare) 
```
tls {
	dns cloudflare {env.CF_API_TOKEN}
}

```

## [dnspod](https://github.com/caddy-dns/dnspod)
```Caddyfile
tls {
  dns dnspod {env.DNSPOD_TOKEN}
}
```