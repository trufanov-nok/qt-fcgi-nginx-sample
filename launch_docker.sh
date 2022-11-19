#!/usr/bin/env bash

docker run --privileged -p 5000:5000 --hostname=fcgi_test fcgi_test launch_fcgi.sh
