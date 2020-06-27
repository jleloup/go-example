build:
	docker build -t go-example .

run:
	docker run -p 8080:8080 -d --rm go-example