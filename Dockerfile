# version: v1.1.20211215

FROM nginx:1.21.4
MAINTAINER chloroplast "41893204@qq.com"

ADD ./nginx.conf   /etc/nginx/nginx.conf

RUN set -ex \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

WORKDIR /var/www/html
