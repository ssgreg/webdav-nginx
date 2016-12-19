FROM ubuntu:latest

RUN \
  apt-get update && \
  apt-get install -y nginx nginx-extras && \
  mkdir -p /srv/webdav

ADD ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
ADD entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

