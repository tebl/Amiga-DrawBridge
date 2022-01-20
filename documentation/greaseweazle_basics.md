# 1> Greaseweazle basics
The *Greaseweazle* can be kind of scary to get started with, after all it works with the raw magnetic flux layer on just about any kind of magnetic media. Just kidding, it's actually quite easy despite all of the things that it is able to do. This document is my own way of remembering the basics, because a week from now - all of this stuff will be lost in time, like oh-so many tears in the rain.

- [1> Greaseweazle basics](#1-greaseweazle-basics)
  - [1.1> Installation](#11-installation)
  - [1.2> Usage](#12-usage)
  - [1.3> Info](#13-info)
  - [1.4> Read](#14-read)
  - [1.5> Update](#15-update)
- [2> Specific system guide](#2-specific-system-guide) 

## 1.1> Installation
Actually "*installing*" the *Greaseweazle* tools is stretching the definition of the word, because all you do is grab it from the official [Downloads](https://github.com/keirf/greaseweazle/wiki/Download-Host-Tools) section - then extract it somewhere that you'll be able to find them again. If you were thinking about installing the firmware onto the STM32 board, I put together a separate page on that very subject - [Greasewazle Firmware](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_firmware.md). You can always consult the [official documentation](https://github.com/keirf/Greaseweazle/wiki/Firmware-Programming), the only reason I kept my own is to keep things simple, mostly by limiting the details to the board I based my PCB on.

## 1.2> Usage
The *gw* command given without any arguments will give a listing of recognized actions supported by the utility, for a more detailed usage you can use the *--help* parameter to get more details for a specific action.
```
gw
```
![gw usage](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_usage.png)
```
gw info --help
```
![gw usage details](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_usage_detail.png)

## 1.3> Info
The action named *info* can be used to verify communication with the STM32 board when connected to your computer, consider this a basic connectivity check that can be performed without an actual floppy drive connected to the Greaseweazle.
```
gw info
```
![gw usage](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_info.png)

## 1.4> Read
This is the reason you built a *Greaseweazle* in the first place, allowing you to use the device you just built to read floppy disks from the comfort of your modern 21st century computer!
```
gw read --help
```
![gw usage](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_001.png)

That's a lot of options, nice to have in case you need them - for a getting started guide we'll just allow the program to select sensible defaults instead. The example below shows how a Commodore Amiga disk can be dumped to ADF-format, suitable for reading directly on your Gotek-modified Amiga or an emulator. 
```
gw read test.adf
```
![gw usage](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_002.png)
![gw usage](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_003.png)

The ADF-format is not always able to replicate the quirkiness found on the disks themselves, often explicitly put there as part of a copy protection scheme. A more modern alternative to the ADF is the more system agnostic HFE-format, an optimized file format created for Gotek drives and similar SD-based solutions. A third option is the SCP format, designed for museum-grade archiving of floppy disks. File type is based on the entension you give the file, consult the table below to get an idea of the sizing differences you can expect when copying a single Amiga disk. For anything less than original, it is suggested to just stay with the smaller more manageable file type as supported by your device and/or emulator.

| File extension | File size (approximate) |
| -------------- | ----------------------- |
| .adf           | 880 KB                  |
| .hfe           | 2 MB                    |
| .scp           | 40 MB                   |

Also, consult the [official documentation](https://github.com/keirf/Greaseweazle/wiki/Getting-Started) for more technically oriented examples that will probably require you to know what you are doing (so test with something less than critical). The Greasewazle supports a lot of various formats and different drive mechanisms, but not all of them are quite as easy to deal with as there may be a lot more options we need to get right - it is entirely possible to break a drive by simpy telling it to do things it was never designed to do.

## 1.5> Update
This command is used when updating the firmware on your Greaseweazle, the process requires first grabbing the updated firmware package from the official [Github repository](https://github.com/keirf/Greaseweazle/wiki/Downloads) and then following the instructions as shown. I realize that to beginners such as myself, this may be a bit vague so I've [documented](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_firmware.md#15-updating-firmware) the process in some more detail though you may not need this if you are familiar with STM32 development
```
gw update
```
![Instructions](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_update_002.png)
![Firmware Update Mode](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_update_003.jpg)
![Firmware updated](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_update_004.png)

# 2> Specific system guide
As previously mentioned, the Greasewazle supports a lot of various formats and different drive mechanisms with more being added on a regular basis. However, not all of them are quite as easy to deal with as there are a lot of options that we need to get right for everything to work. It is entirely possible to break a disk drive, simpy by telling it to do things it was never designed to do or using the wrong kind of cables. Standard 3.5 inch PC drives are usually pretty sturdy, so as long as you're using those you'll be OK. 

Consult the table below in case I've gone to the trouble of detailing my own experiences into archiving disks belonging to specific systems. 

| System                        | Guide |
| ----------------------------- | ----- |
| Amstrad CPC 664/6128          | [Greaseweazle basics: Amstrad](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_basics_amstrad.md)
| Sinclair ZX Spectrum +3       | [Greaseweazle basics: Amstrad](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_basics_amstrad.md)
| Commodore Amiga               | Connect standard 3.5" PC drive, [read](#14-read) as detailed.