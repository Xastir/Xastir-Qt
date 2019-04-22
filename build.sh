#!/bin/sh

mkdir -p build
cd build
qmake-qt5 ../xastir-qt.pro || qmake ../xastir-qt.pro
make

