FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y nginx 
RUN mkdir /tmp/docker
RUN touch /tmp/docker/test.txt
ADD https://raw.githubusercontent.com/pramodmadhavanvc1/htmltest/main/index.html /usr/share/nginx/html/
RUN chmod +r /usr/share/nginx/html
EXPOSE 80
CMD /usr/sbin/nginx -g "daemon off;"
