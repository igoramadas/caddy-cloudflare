# CADDY-CLOUDFLARE

FROM caddy:builder-alpine AS builder
RUN xcaddy build --with github.com/caddy-dns/cloudflare --with github.com/kirsch33/realip --with github.com/hslatman/caddy-crowdsec-bouncer/http

FROM caddy:alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
