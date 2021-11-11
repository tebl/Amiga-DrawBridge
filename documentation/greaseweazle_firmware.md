# 1> Greaseweazle firmware
To start things off correctly, I've always found the STM32 boards confusing and hard to get started with. Probably because the Arduino camp has really catered to my amateurish nature by making things really simple, so if I start to *go on and on* and being all pedantic about documenting these things - it's because I haven't done much with them and I forget everything not written down.

![](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-11-09%2020.59.18.jpg)

For this project I used a clone of what has become colloquially known the *blue pill*, but know that there are a ton of variants and copies (not all of them can be considered functional, at all). The Greaseweazle creator, Keir Fraser, refer to a functional board as **F1**. You could probably buy these from a reputable source, but for everyone living on the edge - the search term that has seen the most functional of purchases, is "**STM32F103C8T6 board**". You will also need the accompanying "**ST-LINK V2**" adapter, because that's apparantly how these things are supposed to work.

- [1> Greaseweazle firmware](#1-greaseweazle-firmware)
  - [1.1> Wiring it up](#11-wiring-it-up)
  - [1.2> Do the blinky](#12-do-the-blinky)
  - [1.3> Installing it](#13-installing-it)
  - [1.4> Driver issues](#14-driver-issues)

## 1.1> Wiring it up
Without the Micro USB side of the STM32 board connected, we're instead going to use the cheap ST Link v2 programmer you probably got along with one of them (at least I hope you did). Connect up the right-angle pins up to the ST Link adapter according to the table below, most is self-explanatory and is mostly just included for plain Arduino-heroes that may be new to the STM32 boards (like myself):

| STM32 | ST Link v2 |
| ----- | ---------- |
| 3V3   | 3.3V       |
| SWIO  | SWDIO      |
| SWCLK | SWCLK      |
| GND   | GND        |

![](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/2021-11-09%2021.29.59.jpg)

## 1.2> Do the blinky
Ideally the first programming of the board should be done before soldering it up to the Greaseweazle PCB, mainly because there are many fake or simply non-functioning boards out there. There's quite a lot of information available on this topic, but the original creator of the Greazeweazle have a dedicated page to dealing and recognizing the [common offenders](https://github.com/keirf/Greaseweazle/wiki/STM32-Fakes). Personally I bought a bunch of fake boards, so we'll need to do some testing. Downloading the Greaseweazle [firmware](https://github.com/keirf/Greaseweazle/wiki/Downloads) by Keir Fraser will also include a blinky sketch in the alt directory, so we'll start by flashing that onto the device.

That does require a way of moving data onto the board, to do that we'll need the STM software as suggested by the [Greaseweazle wiki](https://github.com/keirf/Greaseweazle/wiki/Firmware-Programming) ([STM32 ST-LINK Utility](https://www.st.com/en/development-tools/stsw-link004.html)). Download and get that installed on your computer along with the driver, once installed you'll find the executable in a folder *C:\Program Files (x86)\STMicroelectronics\STM32 ST-LINK Utility\ST-LINK Utility* (depending on OS and localization). With the *ST Link v2* plugged into your computer, start up the utility and *Connect* from the *Target* menu (try jiggling the dupont wires or replace them if you can't connect).

![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_connect.png)

Load the blinky sketch into the utility memory by using *File-> Open...*, but note that it's just loaded into the program and not yet flashed onto the STM32. Following the screenshots below, we're using *Program & Verify*... to actually get it onto the chip. 

![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_blinky_001.png)
![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_blinky_002.png)
![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_blinky_003.png)
![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_blinky_004.png)

If everything went as it should, you should see the result as above - confusingly ending with an error message after taking almost half a second to do its actual business. This is normal, I think. Now look at the board itself, does it blink? If so, then we're ready to move on along to the next level of ~~*Jumanji*~~ Greaseweazle tinkering!

## 1.3> Installing it
Installing the actual firmware is normally done in the exact same way, except it didn't really work that way for me. I don't know why, but it refused to let me connect using the *ST Link v2* after the blinky sketch was added though I'm sure that there's a reasonable explanation for people with experience with the STM32 boards. So I just followed what the program told me, by setting it to allow connection while it is being reset.

![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_connect_001.png)
![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_connect_002.png)

That didn't really work as expected either, until I randomly googled stuff and saw references to actually holding reset when using *Target-> Connect*, releasing either before or after. One of those should work, if not - throw away those dupont wires and try again.

![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_flash_001.png)
![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_flash_002.png)
![STM32 ST-Link](https://github.com/tebl/Amiga-DrawBridge/raw/main/gallery/stm32_flash_003.png)

## 1.4> Driver issues
Now that the firmware is flashed onto the STM32 board, we can consider trying to connect it up to your computer the regular way - just remove the wires going to *ST-LINK v2 adapter* first! Connecting it up using the micro USB plug, the device should be recognized automatically and installed as a *Greaseweazle*. If it didn't, check out the [official documentation](https://github.com/keirf/Greaseweazle/wiki/Software-Installation) for installation on older versions of Windows or something else entirely.