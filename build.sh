#!/bin/bash

BUILD_DIR=build
SRC_DIR=src
INSTALL_DIR=/usr/local

configure_ncurses()
{
    ../$SRC_DIR/configure --prefix=$INSTALL_DIR \
                          --with-shared \
                          --with-termlib \
                          --without-ada \
                          --without-progs \
                          CXXFLAGS="-std=gnu++98"
}

build_ncurses()
{
    make -j 2
}

mkdir -p ./$BUILD_DIR
cd ./$BUILD_DIR
configure_ncurses
build_ncurses
