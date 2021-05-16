FROM golang:1.15.12-alpine as builder

COPY . .

RUN go build -ldflags "-s -w" .

FROM scratch

COPY --from=builder /go /

CMD ["./go"]