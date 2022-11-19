# fcgi_test

A sample server wtitten with Qt5 and running on a nginx web-server with FastCGI interface.
Uses libfcgi as FastCGI interace implementation and spawn-fcgi package to spawn app on a nginx port 5000.
Includes some scripts to pack all as a docker image. Docker image may be launched with:
`sudo docker run --privileged -p 5000:5000 --hostname=fcgi_test fcgi_test launch_fcgi.sh`
uese just `launch_fcgi.sh` if nginx is set up on your local machine.

After launching fcgi_test the http://127.0.0.1:5000 should display a nginx welcome page.
The http://127.0.0.1:5000/fcgi_test or http://127.0.0.1:5000/fcgi_test?something should display a fcgi_test output: a number of requests answered and a list of environment variables available for the app. The `REQUEST_URI=` field will contain parameters part of url.

The sample may be useful for REST API creation with Qt.
