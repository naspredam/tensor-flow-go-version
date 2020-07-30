check-version:
	docker build --pull --tag tensorflow-go-version -f docker/Dockerfile .
	docker run --rm tensorflow-go-version