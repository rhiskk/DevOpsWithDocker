FROM golang:1.16

EXPOSE 8080

WORKDIR /backend

COPY example-backend ./

RUN go build

CMD ./server
