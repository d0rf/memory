FROM nginx:latest

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY html/ /var/concentration/html/

EXPOSE 08

CMD ["nginx", "-g", "daemon off;"]
