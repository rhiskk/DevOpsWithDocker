FROM node:16-alpine3.13

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:80/api/

COPY example-frontend frontend

WORKDIR /frontend

RUN npm install && npm run build && npm install -g serve && \
    rm -rf /var/lib/apt/lists/* && \
    adduser -D appuser

USER appuser

CMD serve -s -l 5000 build

