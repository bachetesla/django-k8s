FROM nginx:latest

WORKDIR /etc/nginx/conf.d/

RUN rm -rf *

COPY default.conf .
