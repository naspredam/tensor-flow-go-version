check-version:
	docker build --pull --tag ai-go -f docker/Dockerfile .
	docker run --rm ai-go