#!/bin/bash -e

# Simple script to install 3DS open haptics 3.4 developer edition

# Use at your own risk!

CUR_DIR=`pwd`

echo "--- There is not need to reboot after installing the packages, press `q` when asked to reboot or not"

echo "--- Downloading package"
mkdir -p tmp
curl https://s3.amazonaws.com/dl.3dsystems.com/binaries/support/downloads/KB+Files/Open+Haptics/openhaptics_3.4-0-developer-edition-amd64.tar.gz --output tmp/openhaptics_3.4-0-developer-edition-amd64.tar.gz

echo "--- Extracting package"
cd tmp && tar zxf openhaptics_3.4-0-developer-edition-amd64.tar.gz

echo "--- Installing"
sudo ./openhaptics_3.4-0-developer-edition-amd64/install

echo "--- Removing temporary files"
cd $CUR_DIR
rm -rf tmp/openhaptics_3.4-0-developer-edition-amd64*

echo "--- Done"
echo "--- You will need to logout and login to make sure all environment variables are set correctly"
echo "--- If you have not installed the Touch Drivers, install them first and then logout and login"
