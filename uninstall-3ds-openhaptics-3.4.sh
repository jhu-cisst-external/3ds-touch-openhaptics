#!/bin/bash -e

# Simple script to remove files installed with the 3DS open haptics 3.4 developer edition

# Use at your own risk!

# Check if user has root privileges or running as root.
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Removing directory /opt/OpenHaptics"
rm -rfv /opt/OpenHaptics

echo "Removing files and links in /usr/lib"
# trying to use patterns that won't glob system files we don't want to remove
rm -vf /usr/lib/libHD.so*
rm -vf /usr/lib/libHDU.a
rm -vf /usr/lib/libHL.so*
rm -vf /usr/lib/libHLU.a
rm -vf /usr/lib/libQH.so*
rm -vf /usr/lib/libQHGLUTWrapper.so*
rm -vf /usr/lib/libSnapConstraints.a

echo "Removing files and links in /usr/include"
rm -rvf /usr/include/HD
rm -rvf /usr/include/HDU
rm -rvf /usr/include/HL
rm -rvf /usr/include/HLU
rm -rvf /usr/include/QH
rm -rvf /usr/include/SnapConstraints

echo "Removing profile file /etc/profile.d/openhaptics.sh"
rm -vf /etc/profile.d/openhaptics.sh

echo "Done"
