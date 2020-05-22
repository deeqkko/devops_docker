FROM alpine:latest
EXPOSE 8080
RUN apk update && apk upgrade
RUN apk add lighttpd
WORKDIR /var/www/localhost/htdocs/
COPY index.html basso.jpeg ./
ENTRYPOINT ["/usr/sbin/lighttpd","-D","-f"]
CMD ["/etc/lighttpd/lighttpd.conf"]
