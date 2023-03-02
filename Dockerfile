FROM golang:1.20.1-alpine as builder
RUN apk add --no-cache git make curl
ENV GOOS=linux
ENV CGO_ENABLED=0
ENV GO111MODULE=on
COPY . /src
RUN ls -la
WORKDIR /src
RUN go build -a -installsuffix cgo -o /bin/testapp cmd/testapp/*.go

FROM alpine:3
RUN export PATH=$PATH:/app
WORKDIR /app
COPY --from=builder /src/bin/testapp /app/testapp
ENTRYPOINT ["/app/testapp"]