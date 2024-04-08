#!/bin/bash -e

# Simple script to install 3DS touch drives

# Use at your own risk!

CUR_DIR=`pwd`

echo "--- Downloading package"
mkdir -p tmp
curl https://s3.amazonaws.com/dl.3dsystems.com/binaries/Sensable/Linux/TouchDriver2022_04_04.tgz --output tmp/TouchDriver2022_04_04.tgz

echo "--- Extracting package"
cd tmp && tar xf TouchDriver2022_04_04.tgz

echo "--- Installing"
sudo cp TouchDriver2022_04_04/bin/Touch* /usr/bin
sudo cp TouchDriver2022_04_04/usr/lib/libPhantomIOLib42.so /usr/lib

echo "--- Removing temporary files"
cd $CUR_DIR
rm -rf tmp

echo "--- Done"
