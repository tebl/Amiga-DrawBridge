# Greaseweazle
The [Greaseweazle](https://github.com/keirf/Greaseweazle) is a well known solution for working with physical floppy disks, all within the comforts of a modern operating system. It was created Keir Fraser, also the creator of the Flash Floppy firmware for Gotek drives, as a low cost alternative to the professional-oriented backup solutions such as the KryoFlux. Given that I've combined a project for creating both a DrawBridge and Greaseweazle into one, it is would be natural to say a few words about the differences between the two.

![Finished unit](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-11-17%2023.34.06.jpg)

While *DrawBridge* was originally created to work with a specific disk format for the *Commodore Amiga*, the *Greaseweazle* will instead work with the raw magnetic flux layer from the disks. This may allow you to archive damaged, or even disks from unknown sources, to be archived for prosperity. Note that this does not necessarily mean you can use the resulting files, for that you would need a suitable emulator or similar program that have the capability of understanding the magnetic data that was originally read from the disks.

![Bare unit](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_010.jpg)

- [1> Building the device](#1-building-the-device)
  - [1.1> Soldering it together](#11-soldering-it-together)
  - [1.2> Power considerations](#12-power-considerations)
  - [1.3> Modifying STM32](#13-modifying-stm32)
  - [1.4> Let there be light](#14-let-there-be-light)
  - [1.5> Finishing touches](#15-finishing-touches)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building a device such as this assumes you have at least minor experience soldering things together, recommended is that you at the very least have access to a soldering station with adjustable temperature. If currently available, you should probably start with 60/40 rosin core solder as the lead-free alternatives tends to be a bit harder to work with.

With the equipment sorted, now comes the shopping - so head on over to the [BOM](#3-bom)-section for some information on what kind of components that you'll need. Note that with sites such as ebay, AliExpress and similar sites that sell cheap chinese components, you'll need to treat these as a suggested search term and look for something that matches the gallery pictures.

## 1.1> Soldering it together
The construction of this unit should be fairly straight-forward, just take your time in order to make sure everything goes into place - more or less straight. I usually recommend starting by having a good look at the PCBs, try to figure out where all of the listed components go and in which orientation they go in (all of this should be clearly marked on the silkscreen). 

![Build 001](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_001.jpg)

I will usually try to install components sorted by their physical size, doing it this way means you'll have an easier time keeping everything from looking somewhat crooked. This is your board, your build and you want it perfect - don't you? If you said no, then go sit in the corner because I worked hard creating this for myself and whoever wants one.

![Build 002](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_002.jpg)

Here we've started by soldering all of the resistors, ensuring that we're using the correct values in each position. Note that two of the resistors will have a value printed with an asterisk, this is because their values would normally need to be matched with the kind of LEDs that you will install on the board. The suggested values should give a comfortable dimmed light when used with modern frosted LEDs, but may be on the lower when used with clear bright LEDs. If you have access to the datasheet that goes with your LEDs and the maths to go with it, perform the necessary calculations - or just accept the values as given (which should work in most cases).

![Build 003](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_003.jpg)

Here I've installed the single transistor, that along with two of the resistors form a single signal inverter for the activity LED so that it only lights up when there is traffic. While we can buy 2n3904 with legs pre-bent to match the footprint, these are very expensive and it is easier to just bend out the legs for these ourselves - taking care to match the flat side to that of the silkscreen. The reason for doing it this way is to make it easier to solder it in for beginners.

![Build 004](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_004.jpg)

At this point we've gone ahead and installed the pin headers that will eventually be used to hold the STM32 board as well as a 34-pin IDC for the floppy drive itself. There's also a spot for a 26-pin version of it for use with Amstrad 3" disk drives though I've not had to a chance to test this out myself as I do not have a functioning drive or disks to put in it. Though I prefer the keying provided by the IDC sockets, you can instead opt to use standard dual-row pin headers here instead. 

## 1.2> Power considerations
Simple USB devices such as the various MCU boards is oftenly limited to a 500mA current draw, most commonly this is plenty for doing small projects based on microcontrollers such as Arduino, STM32 and similar along with a handful of components. However in this case we'll be connecting up a physical floppy drive up to the device, though this *may* be enough when used with later notebook-style drives - it wasn't when I tested it with my earlier 3.5" internal floppy drives.

![Build 005](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_005.jpg)

For that reason, I'll be powering the drive separately using a DC 5v center positive power supply connected via the barrel connector. JP1 has been shorted across pins 1-2, this will separate this power supply from that of the USB (power LED will reflect that of the drive itself as these are now separate). 

The power cable going to the drive was bought ready-made as these are still available on sites such as Aliexpress and similar (usually listed as floppy power splitter or something to that effect), cutting off whatever parts I didn't need. Some floppy drives may also require 12v for such as many of the 5.25" drives and older, for those the recommended route is connecting one of the larger 4 pin Molex connector to J4 and power the whole thing from a PSU that delivers both of these voltages. If you buy one of the commonly available kit for connecting SATA/PATA drives up to a system over USB, you can get PSU that goes along with that. It's common for the cable to have a red wire for 5v, yellow for 12 and black for ground, but if you dug something really old out of a closet it might be a good idea to check the wiring as things wasn't always quite as standardized as it is now.

## 1.3> Modifying STM32
![Build 006](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_006.jpg)

This is more or less just a cosmetic thing, mainly because the boot jumpers on the standard *blue pill* make it a bit too tall to be used with a faceplate. Before we get too far ahead of ourselves and doing any actual work with the board, it might be wise to do some preliminary tests to make sure that the board you have is one of those that can be considered "*functional*" - because unfortunately there are quite a lot of boards that simply will not work properly! For that reason I suggest that you follow most of the [Greaseweazle Firmware](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_firmware.md) document, at least to ensure that it passes the "*blinky*"-test. 

Now that we've determined that we have a working board, we can get started on those modifications mentioned. If you have access to a desoldering station or simply a desoldering pump, you can just simply remove the 6pin header from the board and add a couple of pieces of wires in their place.

![Build 007](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_007.jpg)

If you don't want to through the trouble of removing components, then an alternative is just to use a pair of pliers and pull off the plastic part of it (with a bit of force). Then cut off the part of the pins we don't need, either solder a piece of wire across the top as above to short them as expected - or you could just shorten the pins and bend them into contact with eachother, then add a bit of solder to ensure good contact.

![Build 008](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_008.jpg)

When satisfied with the results, go ahead and solder the board into place on the main PCB.

## 1.4> Let there be light
Missing so far is the actual LEDs, which'll need a bit of vertical adjustment after installing some 10mm nylon hex standoffs. Your standard 5mm LEDs won't be quite that tall, so the suggestion is to put the LEDs into place (longer pin in the round hole) and then install the faceplate on top (without soldering any of the pins).

![Build 009](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_009.jpg)

Start by soldering one of the pins, then reheat while pushing the LED firmly into the cutout on the faceplate. When satisfied that the results look good, you can solder the remaining pin as well as do a touch-up on the first one to ensure good connection.

![Build 010](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/greaseweazle_build_010.jpg)

## 1.5> Finishing touches
If you still haven't installed the Greaseweazle firmware on the device, refer to [Greaseweazle Firmware](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_firmware.md) document for information on getting that done now. With the firmware in place, you can now finally connect up the drive and the device itself up to your computer using the Micro USB port (remember to power the drive via the barrel jack, if needed).

![Finished unit](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-11-17%2023.34.06.jpg)

The supplied software is easy to use for anyone with a passing familiarity with comand-line utilities, but I've put together a separate document on the [basics](https://github.com/tebl/Amiga-DrawBridge/blob/main/documentation/greaseweazle_basics.md) of using it.


# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/Amiga-DrawBridge/tree/main/documentation/schematic) and this is what you'll need to print and work your way through this things don't work as expected after assembly.

# 3> BOM
Most parts should be easy to get a hold of from your favourite local electronic component shop, but given that I don't have access to such shops where I live so everything was based on whatever I could get cheapest from eBay/AliExpress (free shipping, but plan on waiting 3-4 weeks for delivery). Components in parenthesis can be considered optional for features beyond the more basic functionality, but where's the fun in that? You deserve the complete package.

| Reference             | Item                                                              | Count | Order  |
| --------------------- | ----------------------------------------------------------------- | ----- | ------ |
| Interface PCB         | Fabricate using Gerber files                                      |     1 | PCBWay
| Faceplate PCB *       | Fabricate using Gerber files                                      |    (1)| PCBWay
| A1                    | STM32F103C8T6 board (*blue pill*)                                 |     1 |
| D1,D2                 | 5mm LED, preferably one that is frosted                           |    (2)|
| J1 **                 | 2x17 pin male IDC socket                                          |     1 |
| J2                    | 2.1mm x 5.5mm barrel plug                                         |    (1)|
| J6 **                 | 2x13 pin male IDC socket                                          |    (1)|
| Q1                    | 2N3904 transistor (TO-92)                                         |    (2)|
| R1                    | 10k ohm resistor                                                  |    (1)|
| R2 ***                | 1k ohm resistor                                                   |    (1)|
| R3 ***                | 100 ohm resistor                                                  |    (1)|
| R4                    | 1k ohm resistor                                                   |    (1)|
| Mounting ****         | Nylon M3 hex standoffs 6mm (M-F)                                  |    (4)|
| Mounting ****         | Nylon M3 hex standoffs 8mm (M-F)                                  |    (4)|
| Mounting ****         | Nylon M3x6mm nylon screws                                         |    (4)|
| Floppy PSU cable      | 4 pin floppy connector with cable                                 |     1 |

*) Check out [faceplate](https://github.com/tebl/Amiga-DrawBridge/tree/main/faceplates) section of this repository or [PCBWay shared projects](https://www.pcbway.com/project/shareproject/?tag=Greaseweazle) for available options. The default one will be linked as the order URL.

**) Components listed are for keyed IDC connector sockets, if you want to go with a cheaper option that is probably already in a box somewhere in your workshop - use standard dual-row pin breakable headers.

***) As detailed in the build notes, you may need to adjust these to match the type of LED you are installing. As long as you aren't installing the clear bright LEDs you should shouldn't have to change these except for preferences. Do the math if you have the correct datasheets and know how to do them, I find it easier to just throw something in there and see what happens.

****) These are used in various places of the project. You can usually find some kits for M3 nylon standoffs, for the 6mm hex standoffs used on the bottom I've just cut off the screw part of it.