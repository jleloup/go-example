FROM golang:1.14-alpine as builder

# Build

RUN mkdir /app
ADD ./cmd/go-example /app

WORKDIR /app
RUN ls
RUN go build -o main .

FROM alpine:latest

RUN apk --no-cache add ca-certificates

WORKDIR /app

COPY --from=builder /app/main .

# Run
EXPOSE 8080

CMD ["/app/main"]