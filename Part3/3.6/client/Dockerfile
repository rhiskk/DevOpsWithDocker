FROM node:16-alpine3.13 as build-stage

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:80/api/

COPY example-frontend frontend

WORKDIR /frontend

RUN npm install && npm run build && \
    rm -rf /var/lib/apt/lists/* && \
    adduser -D appuser

USER appuser

FROM nginx:1.19-alpine

COPY --from=build-stage /frontend/build/ /usr/share/nginx/html

