FROM alpine
MAINTAINER Benedikt Heine

RUN apk add --no-cache --update \
      nginx \
      rsync \
  && rm -f \
      /etc/rsyncd.conf \
      /etc/nginx/conf.d/default.conf


EXPOSE 873 80 443
VOLUME /data
ADD ./run /usr/local/bin/run

ENTRYPOINT ["/usr/local/bin/run"]
