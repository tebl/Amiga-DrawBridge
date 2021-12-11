# Amiga DrawBridge
I first read about the Amiga DrawBridge in a series of articles in the *Amiga Addict*-magazine, a device created by Rob Smith for reading and writing Commodore Amiga floppy disks using a modern computer. Because I like drawing things more than probably actually using it, I designed my own PCB around the details available from the creators [homepage](http://amiga.robsmithdev.co.uk/). You strictly don't even need a PCB, several options are described on the same page - some of them can be put together without owning a soldering iron. The goal for my design was to put together something that looks nice, but opting for solutions that should be easy for anyone to solder together.

![Finished unit](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-12-11%2021.36.23.jpg)

![Bare unit](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_011.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Power considerations](#12-power-considerations)
  - [1.3> Modifying FTDI-adapter](#13-modifying-ftdi-adapter)
  - [1.4> Install Arduino Pro Mini](#14-install-arduino-pro-mini)
  - [1.5> Let there be light](#15-let-there-be-light)
  - [1.6> Finishing touches](#16-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With the equipment sorted, now comes the shopping - so head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. Note that with sites such as ebay, AliExpress and similar sites that sell cheap chinese components, you'll need to treat these as a suggested search term and look for something that matches the gallery pictures.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). 

![Build 001](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_001.jpg)

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard on creating this for myself and whoever wants to build one.

![Build 002](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_002.jpg)

Here we've started by soldering all of the resistors, ensuring that we're using the correct values in each position. Note that two of the resistors will have a value printed with an asterisk, this is because their values would normally need to be matched with the kind of LEDs that you will install on the board. The suggested values should give a comfortable dimmed light when used with modern frosted LEDs, but will definitely be on the lower side of things when used with clear bright LEDs. If you have access to the datasheet that goes with your LEDs and the maths to go with it, perform the necessary calculations - or just accept the values as given (which should work in most cases).

Second, I've started by installing the pin headers used to attach the two modules to the main PCB, taking care to only pins where they are needed (some Pro Mini clones will not have all of these present). In order to ensure that everything fits together later, consider soldering in just one of the pins of each row - then reheat and adjust so that they sit flush with the board.

![Build 003](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_003.jpg)

The 34-pin IDC connector for the floppy drive is the next thing that should go into place, it has the same height as the pin headers installed in the previous so it should align itself somewhat. Though I prefer the keying provided when using proper IDC sockets, you can instead opt to just use standard dual-row pin headers here. 

## 1.2> Power considerations
Simple USB devices such as the various MCU boards is oftenly limited to a 500mA current draw, most commonly this is plenty for doing small projects based on microcontrollers such as the Arduino along with a handful of components. However in this case we'll be connecting up a physical floppy drive up to the device, though this *may* be enough when used with later notebook-style drives - it wasn't when I tested it with my earlier 3.5" internal floppy drives.

![
Build 004](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_004.jpg)

For that reason, I'll be powering the drive separately using a DC 5v center positive power supply connected via the barrel connector. JP2 has been shorted across pins 1-2 to reflect this, this will separate this power supply from that of the USB (power LED will reflect that of the drive itself as these are now separate). 

![Build 005](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_005.jpg)

The power cable going to the drive was bought ready-made as these are still available on sites such as Aliexpress and similar (usually listed as floppy power splitter or something to that effect), cutting off whatever parts I didn't think I'd need.

Some floppy drives may also require 12v for such as many of the 5.25" drives and older, for those the recommended route is connecting one of the larger 4 pin Molex connector to J4 and power the whole thing from a PSU that delivers both of these voltages. If you buy one of the commonly available kit for connecting SATA/PATA drives up to a system over USB, you can get PSU that goes along with that. It's common for the cable to have a red wire for 5v, yellow for 12 and black for ground, but if you dug something really old out of a closet it might be a good idea to check the wiring as things wasn't always quite as standardized as it is now.

**NB!** The final revision of this PCB has moved around some of the pads used for connecting the cables, so make sure to connect them according to the markings on **your** board instead of copying the images shown here. To re-iterate: 5v is red, 12v is yellow and both black cables are for ground. 

## 1.3> Modifying FTDI-adapter
This is more or less just a cosmetic thing, mostly because the pin headers on top of it will be too tall when installing the faceplates - neither does it make much sense to have it configurable to the end user since the other setting will simply make things stop working. The process is simple, just remove the jumper cap, pull off the black plastic part and then pull out each of the pins. Clean up the holes with some solder wich and solder some of the resistor clippings across the correct two pins as shown below.

![Build 006](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_006.jpg)
![Build 007](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_007.jpg)
![Build 008](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_008.jpg)

If you don't want to through the trouble of removing components, then a somewhat different alternative is to just to use a pair of pliers and pull off the plastic part of it (with a bit of force) as described earlier. Cut off the part of the pins we don't need, then add solder between the two trimmed pins until they make contact. For once we've intentionally created a solder bridge.

When satisfied with the results, go ahead and solder the board into place on the main PCB.

## 1.4> Install Arduino Pro Mini
![Build 009](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_009.jpg)

The Arduino is soldered to the board without much needed other than making sure that the orientation of the board matches the one illustrated on the silkscreen. There are however a few variations of boards on the market though most of these seem to have the reset button in more or less space, but we need to set JP1 according to the specific variation of board we have. Looking at the pin that is now on the top-right corner, if this is marked DTR then we need to bridge pins 1-2 on JP1.

## 1.5> Let there be light
Missing so far are the actual LEDs, which'll need a bit of vertical adjustment after installing some 10mm nylon hex standoffs. Your standard 5mm LEDs won't be quite that tall, so the suggestion is to put the LEDs into place (longer pin in the round hole) and then install the faceplate on top (without actually soldering in any of the pins).

![Build 010](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_010.jpg)

Start by soldering one of the pins, then reheat while pushing the LED firmly into the cutout on the faceplate. When satisfied that the results look good, you can solder the remaining pin as well as do a touch-up on the first one to ensure good connection.

![Build 011](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_011.jpg)

## 1.6> Finishing touches
![Build 012](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/drawbridge_build_012.jpg)

The last step that we need to do is install the firmware onto the Arduino Pro Mini, this is described in a separate [document](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/drawbridge_firmware.md). With the firmware in place, you can now finally connect up the drive and the device itself up to your computer using the Micro USB port (remember to power the drive via the barrel jack, if needed).

![Finished unit](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-12-11%2021.36.23.jpg)

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/Amiga-DrawBridge/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| Interface PCB         | Fabricate using Gerber files                                      |     1 | PCBWay
| Faceplate PCB *       | Fabricate using Gerber files                                      |    (1)| PCBWay
| A1                    | Arduino Pro Mini                                                  |     1 |
| A2                    | FT232RL Module                                                    |     1 |
| D1,D2                 | 5mm LED, preferably one that is frosted                           |    (2)|
| J1 **                 | 2x17 pin male IDC socket                                          |     1 |
| J2                    | 2.1mm x 5.5mm barrel plug                                         |    (1)|
| R1                    | 1k ohm resistor                                                   |     1 |
| R2,R3 ***             | 330 ohm resistor                                                  |    (2)|
| Mounting ****         | Nylon M3 hex standoffs 6mm (M-F)                                  |    (4)|
| Mounting ****         | Nylon M3 hex standoffs 8mm (M-F)                                  |    (4)|
| Mounting ****         | Nylon M3x6mm nylon screws                                         |    (4)|
| Floppy PSU cable      | 4 pin floppy connector with cable                                 |     1 |

*) Check out [faceplate](https://github.com/tebl/Amiga-DrawBridge/tree/main/faceplates) section of this repository or [PCBWay shared projects](https://www.pcbway.com/project/shareproject/?tag=DrawBridge) for available options. The default one will be linked as the order URL.

**) Components listed are for keyed IDC connector sockets, if you want to go with a cheaper option that is probably already in a box somewhere in your workshop - use standard dual-row pin breakable headers.

***) As detailed in the build notes, you may need to adjust these to match the type of LED you are installing. As long as you aren't installing the clear bright LEDs you should shouldn't have to change these except for preferences. Do the math if you have the correct datasheets and know how to do them, I find it easier to just throw something in there and see what happens.

****) These are used in various places of the project. You can usually find some kits for M3 nylon standoffs, for the 6mm hex standoffs used on the bottom I've just cut off the screw part of it.