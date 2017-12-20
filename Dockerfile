# Version 0.0.1
FROM ubuntu:16.04
RUN apt-get update; apt-get install -y nginx
RUN echo 'Hi, I am running in your container (GIT)!' >/var/www/html/index.html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
