FROM httpd:alpine

EXPOSE 80

RUN apk update
RUN set -ex && apk --no-cache add sudo htop

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY scripts/* /usr/local/apache2/cgi-bin/
RUN chmod 755 /usr/local/apache2/cgi-bin/*.sh

RUN mkdir -p /home/www-data/bin
RUN cp /bin/bash /home/www-data/bin/bash

CMD httpd -D FOREGROUND
