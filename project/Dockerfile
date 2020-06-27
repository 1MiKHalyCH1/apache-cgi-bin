FROM httpd

EXPOSE 80

RUN apt-get update
RUN apt-get install htop acl

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY scripts/* /usr/local/apache2/cgi-bin/
RUN chmod 755 /usr/local/apache2/cgi-bin/*.sh

COPY restriction.sh /restriction.sh
RUN chmod 755 /restriction.sh

CMD httpd -D FOREGROUND
