#!/bin/sh

./bootstrap.sh
mkdir -p build
cd build
../configure
make

