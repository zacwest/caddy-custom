Custom Caddy image for ACME DNS-01 challenges, built with [xcaddy](https://github.com/caddyserver/xcaddy).

## Modules

- [caddy-dns/cloudflare](https://github.com/caddy-dns/cloudflare)

## Automation

A GitHub Actions workflow runs on:
- **Push to main** — builds and publishes to GHCR
- **Daily schedule** — checks Docker Hub for new Caddy releases; if found, updates the Dockerfile, commits, and triggers a build
- **Manual dispatch** — optionally checks for updates before building
