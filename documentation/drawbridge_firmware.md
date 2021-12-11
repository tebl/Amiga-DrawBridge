# 1> DrawBridge Firmware
The following can be considered a subset of the [official documentation](http://amiga.robsmithdev.co.uk/instructions/promini), only rewritten to fit the PCB design supplied as part of this repository to fit the specific modules I've used. As the programming is done via the FT232RL module, to complete this guide you'll need an already assembled version of the [main module](https://github.com/tebl/Amiga-DrawBridge/tree/main/Amiga%20Drawbridge).

![Assembled Amiga DrawBridge](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-12-11%2021.33.52.jpg)

- [1> DrawBridge firmware](#1-drawbridge-firmware)
  - [1.1> Arduino settings](#11-arduino-settings)
  - [1.2> Diagnostics](#12-diagnostics)
  - [1.3> Reading a disk](#13-reading-a-disk)

## 1.1> Arduino settings
As with everything based on an [Arduino](https://www.arduino.cc/), you'll need a fairly up to date installation of [Arduino IDE](https://www.arduino.cc/en/software) already on your system. As far as I know, you won't need to install any additional Arduino libraries beyond what is already included.

![Arduino Settings](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/arduino_settings.png)

After opening up the *Arduino IDE*, ensure that you have set board type to *Arduino Pro or Pro Mini*, under processor we need to select the *ATmega328P (5V, 16Mhz)*. Selecting the wrong setting here may make it more difficult to communicate with the module later, so check that you have it set up correctly. With the *Amiga DrawBridge* plugged in, you should be able to select the relevant COM-port from the list (if there are multiple values listed here, try disconnecting it to see which one disappears - that's the one we need).

If you have not already done so, [download](http://amiga.robsmithdev.co.uk/download) the DrawBridge firmware from Rob Smiths [homepage]([download](http://amiga.robsmithdev.co.uk/download)). Extract it somewhere you'll be able to find it later, then open up the Arduino sketch from the folder named *FloppyDriveController.sketch* - it should open up into a separate window of the *Arduino IDE*.

![Arduino Done](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/arduino_done.png)

Click the checkmark on the top left part of the window, this compiles the code for the type of Arduino as configured earlier. The project should compile without any errors, conveniently marked in red. If everything succeeds, you can upload the firmware onto the Arduino using the button next to it (the one with the arrow on it). Rob Smith has his own discord server in case you run into problems, it's accessible via his [homepage](http://amiga.robsmithdev.co.uk/).

Make sure to disconnect and reconnect the *DrawBridge* before continuing.

## 1.2> Diagnostics
Finally, we're ready to attempt to work with actual floppy disks though to ensure everything is working as expected - we'll need to check that the configuration matches your build as well as perform a little diagnostic procedure to ensure that everything is running as expected (everything from within the main software). Ensure that the device is connected via USB, physical floppy drive is connected using both power and a straight ribbon cable (no twist) and you should see the COM port as listed. 

![DrawBridge software](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_idle.png)

Personally I've had less than stellar success with powering older floppy drives over USB, so I'm consistently building my units with a 5v DC barrel connector for power instead (center positive). An underpowered drive will often get stuck in reset, flickering on and off without responding properly. If this happens to you, try changing the power jumper on the board as well as powering the drive separately (the older and larger the drive, the more power-hungry they tend to be). Everything working? Let's move on.

![DrawBridge device settings](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_settings.png)

Clicking the *DrawBridge Config...*-button, you'll get a dialog similar to the one above. I expect that this may change in the future, but currently - a device built according to the *PLUS* schematic, specifically needs to have the option *Set DrawBridge Plus Mode* checked. On my PCBs there are markings for building a *Classic* version of the device as well as the *Plus* - you just need to have the matching setting here (leave unchecked for the *classic*). Hit *Save* when satisfied.

![DrawBridge Diagnostics](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_diagnostic.png)

Back at the main menu, click *Diagnostics...* to run a diagnostic on the device. This'll attempt to communicate with the physical disk drive, prompting you to insert, remove and then reinsert a write-protected dirsk into the drive. Given that the software can write back disks as well, you'll also be asked to insert a disk that it can use for checking that writes work (this will destroy the contents on it). As pictured above, it's a perfectly valid choice to skip this step and though it'll state that the diagnostics failed we've already verified what most will want already (reading disks).

## 1.3> Reading a disk
This is it, this is the whole reason why you wanted to build a DrawBridge - converting all those rapidly degrading disks into files that you can subsequently lose somewhere on your modern system. At this point I'm supposed to be extra supportive in regards to the state of your floppy disks, but honestly - Amiga DD disks, especially the later disks that were produced using peanuts and a sliver of hope weren't exactly impressive in regards to quality. For that reason I suggest not spending too much time picking a name for each image, just set it to something like *test.adf* and start the backup. If it succeeds, then rename the file using file explorer to give it a more sensible name.

![DrawBridge software](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_idle.png)
![DrawBridge software](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_success.png)

If you don't get a success, or even a very low rate of success - things are not always quite as grim as they may appear. Set the disks that couldn't be read aside, you can always try them out later - often they may start working properly after a bit of spinning around. Another common problem is that the previous disk fouled up the drive, so give it a couple of spins with a cleaning disk before temporarily giving up on the disk. Some disks might not be worth working too hard to salvage due to their *assumed* contents, but for the other ones there might be a point where new versions of the software, a replaced disk drive or even an entirely different device such as the Greaseweazle might be able to make more sense of the contents.