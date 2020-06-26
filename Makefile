build:
	docker build -t go-example .

run:
	docker run -p 8080:8081 -d --rm go-example