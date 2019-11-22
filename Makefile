build:
	docker build -t charlieegan3/debug:latest .

push: build
	docker push charlieegan3/debug:latest
