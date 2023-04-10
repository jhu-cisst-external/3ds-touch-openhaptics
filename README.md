# Introduction

The goal of this repository is to facilitate the installation of the GeoMagic/3DS Touch hapic device drivers (USB or Ethernet based) as well as the OpenHaptics SDK (education version) on Ubuntu.  This was successfuly tested on Ubuntu 18.04 LTS 64 bits with the 2019 drivers.  We've had mixed success on Ubuntu 22.04 with the 2022 drivers (see notes below).  These scripts are provided to automate the installation process described in https://support.3dsystems.com/s/article/OpenHaptics-for-Linux-Developer-Edition-v34.

You will still need to configure your device following the instructions from: https://s3.amazonaws.com/dl.3dsystems.com/binaries/Sensable/Linux/Installation+Instructions.pdf, skip to step 7 if you installed the drivers using the scripts in this repository.

To install the drivers for older FireWire based devices (Phantom Omni), see https://github.com/jhu-cisst-external/phantom-omni-1394-drivers.

# Which drivers?

2019 drivers are working fine on Ubuntu 18.04 so no need to use the 2022 version.  These drivers also work on Ubuntu 20.04 for the ethernet based Touch but hang for USB devices.

2022 drivers work on Ubuntu 20.04 with Ethernet and USB based Touch devices but we ran into issues when setting our own device name in `Touch_Setup`.  This might be related to the path used to store the device configuration but we couldn't figure out any working configuration.  So we were able to use `hdInitDevice(HD_DEFAULT_DEVICE)` but not `htInitDevice("custom_name")`.

# Instructions

The 4 scripts provided will perform most of the steps required to download/install OR un-install the files required for the Touch drivers as well as the OpenHaptics SDK.

The two install scripts should be executed without `sudo` though sudo privileges are required (you might be prompted for a password).  This is so temporary files are not created with root id/gid.  Once the install script is done, **you should log out and log back in**.  This is so the `GTDD_HOME` environment variable is set correctly.  Alternatively, you can also `source /etc/profile.d/3ds-touch-drivers.sh` manually to set the environment variable.

The two uninstall scripts need to be executed with `sudo`.

# Notes

The install is a bit different from the process described in the 3DS instructions:
* There is no need to use `chmod` in the `/dev` directory, just make sure your uid is added to the group with read/write permissions on the directory (commonly used groups are `plugdev`, `dialout` and `lp`)
* Environment variables are set in `/etc/profile.d` instead of `/etc/environment`
