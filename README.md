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
Get CF_API_TOKEN: https://support.cloudflare.com/hc/en-us/articles/200167836-Managing-API-Tokens-and-Keys

## [dnspod](https://github.com/caddy-dns/dnspod)
```Caddyfile
tls {
  dns dnspod {env.DNSPOD_TOKEN}
}
```
Get DNSPOD_TOKEN:
https://docs.dnspod.cn/account/5f2d466de8320f1a740d9ff3/