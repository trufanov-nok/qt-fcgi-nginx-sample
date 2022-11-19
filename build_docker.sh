#!/usr/bin/env bash

SCRIPT_PATH=$(dirname -- "$( readlink -f -- "$0"; )";)
cd "${SCRIPT_PATH}"

docker container rm fcgi_test-bld
docker build -t fcgi_test-img _docker/

docker run -t --name fcgi_test-bld \
                    -v ${SCRIPT_PATH}:/fcgi_test \
                    fcgi_test-img \
                    /fcgi_test/build.sh

docker stop fcgi_test-bld
                    
docker cp ${SCRIPT_PATH}/build/fcgi_test fcgi_test-bld:/usr/local/bin/fcgi_test

docker commit fcgi_test-bld  fcgi_test
