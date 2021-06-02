#run with -v /var/run/docker.sock:/var/run/docker.sock

FROM docker

WORKDIR /mydir

RUN apk update && apk add git

COPY ./build.sh ./

CMD sh build.sh
