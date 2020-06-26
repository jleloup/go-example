FROM golang:1.14-alpine

# Build

RUN mkdir /app
ADD ./cmd/go-example /app

WORKDIR /app
RUN ls
RUN go build -o main .

# Run

CMD ["/app/main"]