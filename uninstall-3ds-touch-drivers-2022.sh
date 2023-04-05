#!/bin/bash -e

# Simple script to remove files installed with the 3DS Touch driver 2022_04_04

# Use at your own risk!

# Check if user has root privileges or running as root.
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Removing library libPhantomIOLib42.so"
rm -fv /usr/lib/libPhantomIOLib42.so

echo "Removing application Touch_Diagnostic"
rm -fv /usr/bin/Touch_Diagnostic

echo "Removing application Touch_Setup"
rm -fv /usr/bin/Touch_Setup

echo "Removing environment config file"
rm -fv /etc/profile.d/3ds-touch-drivers.sh

echo "Done"
