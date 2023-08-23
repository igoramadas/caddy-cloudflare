# HELPER COMMANDS

build:
	docker build -t igoramadas/caddy-cloudflare .

publish:
	docker buildx build --push --platform linux/arm64,linux/amd64 -t igoramadas/caddy-cloudflare .
