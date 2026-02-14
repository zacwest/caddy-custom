FROM caddy:builder AS builder
RUN xcaddy build \
    --with github.com/caddy-dns/porkbun \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/dnsimple \
    --with github.com/caddy-dns/spaceship

FROM caddy:2
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
