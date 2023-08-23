# CADDY-CLOUDFLARE

FROM caddy:builder-alpine AS builder
ENV CGO_ENABLED=1
RUN xcaddy build --with github.com/caddy-dns/cloudflare

FROM caddy:alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
