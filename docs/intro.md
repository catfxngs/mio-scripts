<!-- omit in toc -->
# Documentation

Mio, this page is dedicated to explaining everything you'll need to know about this repository, and hopefully [answer any questions](faq.md)! Please feel free to read through all of this at once, or come back in sections at any time - whatever is easiest for you!

### **To anyone else reading my code, please keep in mind these docs are not catered to you, although it may still be useful.**

![silver the hedgehog](../silverlay.png)

## Sections
- [Sections](#sections)
- [What Is This?](#what-is-this)
- [How to Use Scripts](#how-to-use-scripts)
  - [Windows](#windows)
  - [Linux](#linux)
  - [Python](#python)
- [Emulators](#emulators)
- [Linux Maintenance](#linux-maintenance)
- [Quick Tasks](#quick-tasks)
- [Script Instructions](#script-instructions)

## What Is This?

This repository is a collection of scripts, custom tools, configurations, and more - just for you! My original intention was to create a resource that would make setting up a Linux system easier for you, before deciding on creating an all-in-one repository.

Hopefully, these tools will come in handy for a variety of tasks, especially with setting up your new PC build! I'm going to do my best to explain *everything* I can, and provide easy-to-understand documentation.

You will be able to use this repository to optimally pre-configure your emulators, easily maintain & setup a Linux system, simplify some basic tasks without the need of additional software, and so so much more! I would love to help you in anything becomes too confusing!

**Please keep in mind neither the repo or documentation is finished! ^_^**

## How to Use Scripts

### Windows

`.bat`, or *Batch* files, are Windows scripts executed in the Command Prompt. 

You may have to run certain scripts in different ways, but generally, you will only need to open the file. For all files in this repository, you can safely `Right Click > Run as Administrator`!

**NEVER** ever do this with any scripts you can't trust or verify! Just ask me! :)

### Linux

There is a variety of scripting languages for Linux, however, all my included scripts (at the moment) are in `.sh`, or *Shell* files. 

Executing scripts in Linux can be a little scary, but it's very easy! You will probably want to use these two options, depending on the script:

**In the Terminal**
1. Right click in the script's folder, and select `Open in Terminal`.
2. Type `sudo bash filename.sh` and click enter.

**Running the File**
1. Right click the script file, and select `Properties`.
2. Look for the `Permissions` tab.
3. Check the box for `Allow executing file as a program` and exit.
4. Open the file, and select `Run in the terminal` when prompted!

Sometimes, you may need to use the terminal in a more complicated way, but this is only for specific scripts. I will make sure to give very detailed instructions otherwise! Don't worry too much, 99% of the time you'll just be typing `sudo bash filename.sh` in a terminal and the script will take care of the hard stuff for you!

### Python

`.py`, or *Python* files, are scripts written in in Python (shocking, I know). These will function identically across Windows, any Linux distro, or even MacOS!

On Windows, you will need to install Python 3 from [here](https://www.python.org/downloads/).

On Linux Mint, `linux/mint/post-install.sh` takes care of this for you!

Running a Python script is ridiculously easy. Are you ready for this?

**In the Terminal**
1. Right click in the script's folder, and select `Open in Terminal`.
1. Type `python3 filename.py` and click enter.

That's all! See, you can totally do it! I promise it's not as hard as it looks!! :3

## Emulators

No documentation at this time, still working on the scripts. The current config files are placeholders and not optimzied for your build yet!

## Linux Maintenance

While Mint Cinnamon is a great, easy-to-use introduction to Linux, I wanted to make it *even* easier for you.

In `linux/mint`, you will find scripts tailored specifically for your Mint system. These will help make your setup easy, keep your apps up to date, and also simplify some otherwise compliated tasks. Future documentation will explain each of these in detail!

You should **absolutely** run `post-install.sh` before anything else! >_<

## Quick Tasks

No documentation at this time.

## Script Instructions

Click [here](scripts.md) to read instructions for each script/tool.
