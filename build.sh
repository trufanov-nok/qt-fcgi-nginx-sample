#!/usr/bin/env bash

SCRIPT_PATH=$(dirname -- "$( readlink -f -- "$0"; )";)
cd "${SCRIPT_PATH}"

if [ ! -d build ]
then
     mkdir build
else
     rm -rf build/*
fi

cd build

cmake ..
make -j$(nproc)
