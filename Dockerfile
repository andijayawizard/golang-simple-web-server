from golang:alpine
run apk update && apk add --no-cache git
workdir /app
copy . .
run go mod tidy
run go build -o binary
entrypoint ["/app/binary"]