# Introduction

The goal of this repository is to facilitate the installation of the GeoMagic/3DS Touch hapic device drivers (USB or Ethernet based) as well as the OpenHaptics SDK (education version) on Ubuntu.  This was successfuly tested on Ubuntu 18.04 LTS 64 bits.  These scripts are provided to automate the installation process described in https://support.3dsystems.com/s/article/OpenHaptics-for-Linux-Developer-Edition-v34.

You will still need to configure your device following the instructions from: https://s3.amazonaws.com/dl.3dsystems.com/binaries/Sensable/Linux/Installation+Instructions.pdf, skip to step 7 if you installed the drivers using the scripts in this repository.

To install the drivers for older FireWire based devices (Phantom Omni), see https://github.com/jhu-cisst-external/phantom-omni-1394-drivers.

# Instructions

The 4 scripts provided will perform most of the steps required to download/install OR un-install the files required for the Touch drivers as well as the OpenHaptics SDK.

The two install scripts should be executed without `sudo` though sudo privileges are required (you might be prompted for a password).  This is so temporary files are not created with root id/gid.

The two uninstall scripts need to be executed with `sudo`.

# Notes

The install is a bit different from the process described in the 3DS instructions:
* There is no need to use `chmod` in the `/dev` directory, just make sure your uid is added to the group with read/write permissions on the directory (commonly used groups are `plugdev`, `dialout` and `lp`)
* Environment variables are set in `/etc/profile.d` instead of `/etc/environment`
