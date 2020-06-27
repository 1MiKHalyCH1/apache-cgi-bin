#!/bin/bash
setfacl -m user:www-data:- /usr/local/bin/*
setfacl -m user:www-data:- /usr/sbin/*
setfacl -m user:www-data:- /usr/bin/*
setfacl -m user:www-data:- /sbin/*
setfacl -m user:www-data:- /bin/*

setfacl -m user:www-data:x /bin/bash
setfacl -m user:www-data:x /bin/echo
setfacl -m user:www-data:x /bin/sed
setfacl -m user:www-data:x /bin/sleep
setfacl -m user:www-data:x /usr/bin/whoami
