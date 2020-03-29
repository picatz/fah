docker-build-tag-n-push:
	docker build -t fah-client:latest .
	docker tag fah-client:latest kentgruber/fah-client:latest
	docker push kentgruber/fah-client:latest