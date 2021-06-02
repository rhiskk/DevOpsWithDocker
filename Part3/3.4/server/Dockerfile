FROM golang:1.16

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:80/

WORKDIR /backend

COPY example-backend ./

RUN go build && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m appuser

USER appuser

CMD ./server
