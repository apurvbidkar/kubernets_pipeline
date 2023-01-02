FROM ubuntu
RUN apt-get update
RUN apt install nginx -y
RUN cd /var/www/html/
RUN rm -rf /*.html
COPY ./index.html  /var/www/html/
CMD ["/usr/sbin/nginx", "-g", "daemon off;"] 
EXPOSE 80






