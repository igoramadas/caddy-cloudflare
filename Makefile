# HELPER COMMANDS

build:
	docker build -t igoramadas/caddy-cloudflare .

publish:
	docker buildx build --push --platform linux/amd64,linux/arm64,linux/arm/v7 -t igoramadas/caddy-cloudflare .
