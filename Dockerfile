FROM golang:1.15
WORKDIR /go/src/app
COPY . .
RUN GOOS=linux go build -ldflags="-s -w"
CMD ["./app"]