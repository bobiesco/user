From golang:1.19-alpine

WORKDIR /app
COPY . /app
RUN whoami

RUN go mod init github.com/bobiesco/user
RUN go mod tidy
RUN go build .
CMD ["/app/user"]

