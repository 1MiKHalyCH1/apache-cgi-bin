FROM httpd:alpine

EXPOSE 80

RUN apk update
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY index.sh /usr/local/apache2/cgi-bin/index
RUN chmod 755 /usr/local/apache2/cgi-bin/index

CMD httpd -D FOREGROUND
