
FROM golang:1.16-alpine3.13 as build-stage

ENV REQUEST_ORIGIN=http://localhost:80/
ENV CGO_ENABLED=0

WORKDIR /backend

COPY example-backend ./

RUN go build

FROM scratch

EXPOSE 8080

COPY --from=build-stage /backend/server ./

ENTRYPOINT ["./server"]
