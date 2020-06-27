build:
	docker build -t go-example .

run-local:
	docker run -p 8080:8080 -d --rm go-example

run:
	kubectl apply -f kubernetes/deployment.yml
	kubectl apply -f kubernetes/service.yml