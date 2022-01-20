# 1> Greaseweazle basics: Amstrad
Given that my PCB version of the Greaseweazle comes with a 26-pin connector for connecting 3 inch drives from various Amstrad-computers, most notably associated with the Sinclair ZX Spectrum +3, Amstrad CPC 664 and 6128. An external Amstrad drive such as the FD-1 may also be used, but you'll need to disconnect the internal power cable before connecting it to the Greaseweazle (see [muckypaws](https://muckypaws.com/2021/01/27/greaseweazle-trouble-shooting1/?fbclid=IwAR0R0z3QcK_K70Te8mQjCJiNpTe90wbSDU_o0YwysO0admsYvksktf1WTrk) for more information). Most, if not all of these drives will have their drive belts severely deteriorated, so unless you've already replaced those - you should plan on getting that done before attempting to use the drive.

- [1> Amstrad basics](#1-greaseweazle-basics-amstrad)
  - [1.1> Setup](#11-setup)
  - [1.2> Reading a disk](#12-reading-a-disk)
  - [1.3> Converting the file](#13-converting-the-file)
  - [1.4> Testing in an emulator](#14-testing-in-an-emulator)

## 1.1> Setup
Not shown, but the Amstrad jumper need to be set to the single-sided position (1-2) for this to function as intended, this is to reflect the fact that we're connecting a single sided 3 inch disk drive to the Greaseweazle. A 26-pin ribbon cable has been used, this is without a twist and needs to have its red stripe facing the power connector.

![Amstrad setup](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_setup_amstrad.jpg)

**WARNING!** As already mentioned at various points in the build documentation, the 3 inch Amstrad drives have a different pinout on the power connector. 5v and 12v have been swapped around, meaning that if you simply connect a power connector intended for later 3.5 inch PC drives you'll more than likely kill that drive right there and then. For more information, see [build instructions](https://github.com/tebl/Amiga-DrawBridge/tree/main/Greaseweazle#15-amstrad-components) on making a suitable adapter.

Given that all of these drives requires both 5v and 12v to be present, you need to connect a dual-voltage PSU to the module instead of simply using the 5v DC barrel connection by itself.

## 1.2> Reading a disk
Currently, at the time of writing this (version 0.37) does not include direct support for dumping ZX Spectrum +3/CPC disk images to the "*.dsk*"-file format recognized by emulators, so we'll need to start by doing a raw dump of the data to an SCP file first. The commands used has been shown below, the *--tracks* parameter value is especially important to get right as this limits the device to match the physical limitations of the 40 track single-sided disk drive.

![Amstrad read](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_021.png)
![Amstrad read](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_022.png)

**WARNING!** Failing to specify the parameters correctly as shown may cause problems for you later, the disk drives we're dealing here is single-sided with 40 tracks. Running the command without these details may knock your drive out of alignment, something that will be hard to repair without an oscilloscope. [Noel's Retro Lab](https://www.youtube.com/watch?v=WK0QoVNVO2w) did a video on how to repair this, I can't provide any details beyond that as my drive is still broken.

## 1.3> Converting the file
As mentioned, in order to test out that the disk was dumped successfully, we'll need to convert it to something the various emulators support. The HxC floppy emulator comes with a set of [comprehensive tools](http://hxc2001.free.fr/floppy_drive_emulator/index.html#download) for converting the SCP-image we currently have in the formats that the emulators are more likely support, including a Gotek drive running FlashFloppy in case you were wondering.

![HxCFloppyEmulator](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_023.png)

The package will be named *HxCFloppyEmulator software*, after downloading - extract it somewhere you'll be able to find later. It looks something like shown above, click *Load* to open up the image you dumped earlier. The status should correctly identify it as containing a single side, consisting of 40 tracks. In case you're wondering what the data looks like, you can use *Track Analyzer* to get a visualization of what it looks like - set *View mode* to *Dummy disk* if like me, you have no background to understand the magnetic flux display shown initially. As far as I understand, defined areas like below are good while pure *chaos* is just completely unreadable (might be a problem with the drive so ensure that it's been repaired correctly).

![HxCFloppyEmulator](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_023_details.png)

Back at the main menu, hit *Export* in order to get the dialog shown below. Select the relevant file format under *Save as type:*, for both Sinclair ZX Spectrum +3 disks as well as the CPC disks you'd need to go with *CPC DSK file (.dsk)*

![HxCFloppyEmulator](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_024.png)

## 1.4> Testing in an emulator
Testing in emulators mostly just means using whatever program you're familiar with, personally I tend to use [ZXSpin](https://www.zophar.net/sinclair/zx-spin.html). I know it's ancient, but it supports the whole range of machines - you just need to set the model from *Tools --> Options*. Insert the *.dsk* file into the virtual disk drive from *File --> Insert Disks...*, then follow the instructions that came with the software. Normally I switch to the *+3 BASIC* first, then issue a *CAT* command to ensure that we can read the disk contents as expected. Most software will run automatically when selecting *Loader* from the boot menu, but some will require you to load the program manually instead.

![ZXSpin](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_020.jpg)
![ZXSpin](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_025.png)
![ZXSpin](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/gw_read_026.png)
