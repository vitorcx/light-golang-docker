FROM golang:1.15.12-alpine as builder

COPY . .

RUN go build .

FROM scratch

COPY --from=builder /go /

CMD ["./go"]