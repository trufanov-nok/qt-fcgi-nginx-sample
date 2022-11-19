#!/usr/bin/env bash

nginx -c /etc/nginx/nginx.conf
spawn-fcgi -s /var/run/fcgi_test.socket -U www-data -G www-data -n /usr/local/bin/fcgi_test
