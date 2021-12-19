# Amiga DrawBridge and Greaseweazle
I started this project, completely fascinated by the recent articles written by Rob Smith for Amiga Addict magazine, detailing his solution for reading and writing Amiga floppy disks using an Arduino. I decided to look into low-cost implementation of his solution, as well as look into the other well known solution - the Greaseweazle. While there are certainly more professional options available, KryoFlux comes to mind, I like the idea of having low-cost solutions available - making personal disk backups a fun little diversion as opposed to a museum-grade investment.

![Disks](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-10-08%2001.34.22.jpg)

- [1> Amiga DrawBridge](#1-amiga-drawbridge)
  - [1.1> Modules](#11-modules)
- [2> Greaseweazle](#2-greaseweazle)
  - [2.1> Modules](#21-modules)

## 1> Amiga DrawBridge
Rob Smith called his solution the **Arduino Amiga Floppy Disk Reader/Writer**, colloquially known as the **DrawBridge**. Completely open solution created with the Arduino as a starting point, all of the [information](http://amiga.robsmithdev.co.uk/instructions/promini) that you'd need to build it can be found on his [homepage](http://amiga.robsmithdev.co.uk/). You don't need more than few relatively common modules and a ton of wires to make it work, but mainly because I enjoy drawing things, as well as having an inherent distrust of the kind of cheap Dupont cables I keep buying - I made a PCB for soldering the components to instead.

![Amiga DrawBridge](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-11-03%2001.33.49.jpg)

One of the more interesting features of the DrawBridge is that he has put together a modified version of WinUAE, allowing the emulator to work directly with your physical disks! He later ported the feature so that the same can be done with the Greaseweazle, pretty impressive stuff. 

### 1.1> Modules
For the technical details as well as information regarding the modules included by this specific github project, consult the table below - follow the documentation links for build instructions, BOM and anything else of that sort.  Faceplates and any backplates listed are mainly decorative, allowing you to put together something similar to a case without actually requiring a 3d-printer. 

| Module               | Required  | Documentation | Order      |
| -------------------- | --------- | ------------- | ---------- |
| Amiga DrawBridge     |       Yes | [Documentation](https://github.com/tebl/Amiga-DrawBridge/tree/main/Amiga%20Drawbridge), [Firmware](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/drawbridge_firmware.md)                  | PCBWay
| Amiga DrawBridge FA1 | Faceplate | [Documentation](https://github.com/tebl/Amiga-DrawBridge/tree/main/faceplates/Amiga%20Drawbridge%20FA1) | PCBWay
| Amiga DrawBridge FA2 | Faceplate | [Documentation](https://github.com/tebl/Amiga-DrawBridge/tree/main/faceplates/Amiga%20Drawbridge%20FA2) | PCBWay
| Amiga DrawBridge BA1 | Backplate | [Documentation](https://github.com/tebl/Amiga-DrawBridge/tree/main/faceplates/Amiga%20Drawbridge%20BA1) | PCBWay

## 2> Greaseweazle
The [Greaseweazle](https://github.com/keirf/Greaseweazle) is another well known low-cost solution for working with physical floppy disks, having been created by Keir Fraser (also the creator of Flash Floppy firmware for Gotek drives). The difference from the *DrawBridge* is that instead of attempting to work with a specific disk format, it instead attempts to read the raw magnetic flux layer from the disks - allowing even damaged or disks of unknown origin to be imaged.

![Greaseweazle](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-12-19%2001.59.39.jpg)

### 2.1> Modules
For the technical details as well as information regarding the modules included by this specific github project, consult the table below - follow the documentation links for build instructions, BOM and anything else of that sort.  Faceplates and any backplates listed are mainly decorative, allowing you to put together something similar to a case without actually requiring a 3d-printer. 

| Module               | Required  | Documentation | Order      |
| -------------------- | --------- | ------------- | ---------- |
| Greaseweazle         |       Yes | [Documentation](https://github.com/tebl/Amiga-DrawBridge/tree/main/Greaseweazle), [Firmware](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_firmware.md), [Getting started](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_basics.md)                                                    | PCBWay
| Greaseweazle FA1     | Faceplate | [Documentation](https://github.com/tebl/Amiga-DrawBridge/tree/main/faceplates/Greaseweazle%20FA1)       | PCBWay
| Greaseweazle BA1 | Faceplate | [Documentation](https://github.com/tebl/Amiga-DrawBridge/tree/main/faceplates/Greaseweazle%20FB1)           | PCBWay