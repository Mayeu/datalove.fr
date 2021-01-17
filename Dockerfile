FROM nginx:alpine

RUN apk update              \
 && apk upgrade --no-cache  \
 && apk add --no-cache      \
      curl

COPY public/ /usr/share/nginx/html/
