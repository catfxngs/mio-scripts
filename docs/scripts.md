<!-- omit in toc -->
# Scripts

Every script & tool here has a different function and execution. To prevent any confusion or misunderstandings, I have done my best to document the usage of each in detail for you! There is also a `readme.txt` included next to any complicated scripts.

**This documentation is not complete!** Go [back.](intro.md)

## Table of Contents
- [Linux](#linux)
  - [Emulators](#emulators)
    - [Dolphin](#dolphin)
    - [PCSX2](#pcsx2)
    - [PPSSPP](#ppsspp)
  - [Fun](#fun)
    - [Nyan Cat](#nyan-cat)
  - [Mint](#mint)
    - [Maintenance](#maintenance)
    - [Post-Install](#post-install)
  - [Tools](#tools)
    - [Extract](#extract)
- [Windows](#windows)
  - [Emulators](#emulators-1)
    - [Dolphin](#dolphin-1)
    - [PCSX2](#pcsx2-1)
    - [PPSSPP](#ppsspp-1)
    - [Xenia](#xenia)
  - [Fun](#fun-1)
    - [Pokemon](#pokemon)
  - [Tools](#tools-1)
    - [DNS Setup](#dns-setup)
    - [IP Renewal](#ip-renewal)

# Linux

All scripts are safe to be run with `sudo` privileges.

## Emulators

### Dolphin




### PCSX2



### PPSSPP



## Fun

### Nyan Cat



## Mint

### Maintenance

This script should be run every time you boot into Linux Mint, as it simplifies checking for and automatically approving any available updates. This way, you won't have to be constantly monitoring the update manager!

I recommend keeping `maint.sh` on your desktop or home folder, so it's easy to access. Then, right click the file, and check the box in  `Properties > Permissions > Allow executing file as program`. Now you can easily run the script!

### Post-Install

This script is the **most important** and should be run before *anything* else on a new Linux Mint system!

Currently, the post-install script installs the following software: 

- VLC
- QBittorrent
- Teamviewer
- Discord
- Spotify
- Steam
- Dolphin Emulator
- ProtonVPN

It also immediately checks for updates and adds new repositories, as well as the following:

- Oracle Java
- Multimedia codecs
- Compressed archiving utilities
- Microsoft Font support
- Python-PIP

**This is NOT a final list! There is much more to be added!**

It doesn't matter how you execuse this script, as you'll likely only use it once per system. To keep things simple, right click in the `linux/mint` folder, and select `Open in Terminal`. Then, copy-and-paste the following command:

`sudo post-install.sh`

Be patient if you can, this might take some time! :)

## Tools

### Extract



# Windows

All scripts, tools, and programs are safe to be `Run as Administrator`.

## Emulators

### Dolphin




### PCSX2



### PPSSPP



### Xenia



## Fun

### Pokemon



## Tools

### DNS Setup

This batch file configures your DNS settings to **malware blocking** version of the [CloudFlare DNS](https://developers.cloudflare.com/1.1.1.1/setup/) `(1.1.1.2, 1.0.0.2)`.

Right click `dns.bat`, and select `Run as Administrator`! It is currently preconfigured for your new build's default wireless device.

### IP Renewal

This batch file resets and renews your IP address, and also flushes the DNS cache! It is a great safety tool that you can feel free to run when necessary.

Right click `iprenew.bat`, and select `Run as Administrator`! The script will perform the same regardless of your current wireless device.


