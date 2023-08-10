FROM alpine:latest

RUN set -e \
      && apk add --update --no-cache nginx

COPY ./default.conf /etc/nginx/http.d/default.conf

RUN set -e \
      && ln -sf /dev/stdout /var/log/nginx/access.log \
      && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
