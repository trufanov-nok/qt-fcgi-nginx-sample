FROM ubuntu

RUN apt-get -y update && apt-get -y install nginx spawn-fcgi
RUN apt-get -y install build-essential cmake qtbase5-dev libfcgi-dev
COPY nginx/fastcgi.conf /etc/nginx/fastcgi.conf
COPY nginx/sites-enabled/default /etc/nginx/sites-enabled/default

COPY nginx/launch_fcgi.sh /usr/local/bin/launch_fcgi.sh
