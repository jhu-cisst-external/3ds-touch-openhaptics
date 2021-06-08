# Introduction

The goal of these notes is to document how to install the GeoMagic/3DS Touch hapic device drivers (USB or Ethernet based) as well as the OpenHaptics SDK (education version) on Ubuntu.  This was successfuly tested on Ubuntu 18.04 LTS 64 bits.

To install the drivers for older FireWire based
# Instructions

The 4 scripts provided will perform most of the steps required to download/install OR un-install the files required for the Touch drivers as well as the OpenHaptics SDK.

The two install scripts should be executed without sudo though sudo privileges are required (you might be prompted for a password).  This is so temporary files are not created with root id/gid.

The two uninstall scripts need to be executed with sudo.

# Notes

The install is a bit different from the process described in the 3DS instructions:
* There is no need to use `chmod` in the `/dev` directory, just make sure your uid is added to the group with read/write permissions on the directory (commonly used groups are `plugdev`, `dialout` and `lp`)
* Environment variables are set in /etc/profile.d instead or /etc/environment
