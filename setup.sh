#!/bin/bash
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y \
    build-essential \
    cmake \
    git-core \
    libopencv-dev \
    zlib1g-dev \
    librtlsdr-dev

# be sure librtlsdr-dev is installed *before* compiling!

mkdir -p ~/workspace
cd ~/workspace

git clone https://github.com/hdoverobinson/wx-star_false-color.git

# Open Satellite Project's goesdump
# https://github.com/opensatelliteproject/goesdump.git

# goestools (see also fork: https://github.com/creinemann/goestools)
git clone --recursive https://github.com/pietern/goestools
cd goestools
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr/local
make
sudo make install
