FROM golang:1.15
WORKDIR go/src/pock8s
COPY . .
RUN GOOS=linux go build -ldflags="-s -w"
CMD [ "./pock8s" ]
