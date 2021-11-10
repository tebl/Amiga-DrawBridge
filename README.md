# Amiga DrawBridge and Greaseweazle
I started this project, completely fascinated by the recent articles written by Rob Smith for Amiga Addict magazine, detailing his solution for reading and writing Amiga floppy disks using an Arduino. I decided to look into low-cost implementation of his solution, as well as look into the other well known solution - the Greaseweazle. While there are certainly more professional options available, KryoFlux comes to mind, I like the idea of having low-cost solutions available - making personal disk backups a fun little diversion as opposed to a museum-grade investment.

![](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-10-08%2001.34.22.jpg)

# Amiga DrawBridge
Rob Smith called his solution the **Arduino Amiga Floppy Disk Reader/Writer**, later shortened to just **DrawBridge**. It is completely open and comes with all the [information](http://amiga.robsmithdev.co.uk/instructions/promini) that you'd need to build it on his [homepage](http://amiga.robsmithdev.co.uk/). The genius of his design is that you really don't need more than a couple of modules and a ton of wires to make it work, but because I enjoy drawing things and have an inherent distrust of the kind of Dupont cables I have - I made a PCB for soldering the components to instead.

![Amiga DrawBridge](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-11-03%2001.33.49.jpg)

One of the more interesting features of the DrawBridge is that he made a modification for WinUAE, allowing the emulator to directly work with the physical drive - allowing you to boot your games directly from your physical disks!

# Greaseweazle
The [Greaseweazle](https://github.com/keirf/Greaseweazle) is another well known low-cost solution for working with physical floppy disks, having been created by Keir Fraser (also the creator of Flash Floppy firmware for Gotek drives). The difference from the *DrawBridge* is that instead of attempting to work with a specific disk format, it instead attempts to read the raw magnetic flux layer from the disks - allowing even damaged or disks of unknown origin to be imaged.

![Greaseweazle](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-11-10%2020.31.25.jpg)