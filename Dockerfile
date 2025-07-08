FROM golang:alpine

RUN apk add --no-cache --update protoc && \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

ENTRYPOINT [ "protoc" ]
