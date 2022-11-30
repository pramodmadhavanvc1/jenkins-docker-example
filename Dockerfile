FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y nginx 
RUN mkdir /tmp/docker
RUN touch /tmp/docker/test.txt
COPY ./src/index.html /tmp

EXPOSE 80
CMD /usr/sbin/nginx -g "daemon off;"
