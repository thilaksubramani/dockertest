FROM nginx
RUN apt-get update && apt-get install nginx -y
RUN rm -rf /var/www/html/*
COPY index.html /var/www/html
VOLUME ["/var/log/nginx"]
EXPOSE 8080 80
CMD nginx -g 'daemon off;'
