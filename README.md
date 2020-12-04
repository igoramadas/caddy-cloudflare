# Caddy + Cloudflare DNS plugin

Based on the official Caddy image, this includes the Cloudflare DNS plugin.

## Environment variables

- CLOUDFLARE_EMAIL
- CLOUDFLARE_API_TOKEN

To get the Cloudflare API token please follow [these instructions](https://support.cloudflare.com/hc/en-us/articles/200167836-Managing-API-Tokens-and-Keys).

## Running it

    $ docker pull igoramadas/caddy-cloudflare

    $ docker run -it --name caddy-cloudflare \
                 -p 80:80 \
                 -p 443:443 \
                 -v /mount/to/caddy/data:/data \
                 -v /mount/to/caddy/config:/config \
                 -v /mount/to/Caddyfile:/etc/caddy/Caddyfile \
                 -e CLOUDFLARE_EMAIL=my@email.com \
                 -e CLOUDFLARE_API_TOKEN=my-api-token \
                 igoramadas/caddy-cloudflare

Please note that you might need to adjust the ports accordingly.

## Other options

Please check the [official caddy Docker image](https://hub.docker.com/_/caddy) for extra options running the service.
