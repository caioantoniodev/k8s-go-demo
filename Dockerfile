FROM golang:1.22.1
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o k8s-go-demo
ENTRYPOINT [ "/app/k8s-go-demo" ]
