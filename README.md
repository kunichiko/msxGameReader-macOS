# msxGameReader
Msx Game Reader library 

 What does this do?
===================
 
  This is the initial job for a full replacement userland driver for ASCII MSX Game Reader usb device using libusb. You can get more info at:
  
  
  https://psxdev.github.io/msxgamereader.html

  I believe that MSX needs more open hardware/open software solutions, i am against closed and expensive initiatives and the MSX users should not support this kind of closed projects these days and ask for full open projects only. 
  
Change log
===========================
 - 05/05/2025 Port to macOS (by @kunichiko) 
 - 10/09/2019 Initial commit

TODO 
===========================
 - refactory/separate usb code from msxGameReader core
 - add more reversed functions no time to add yet. Basic functionality is already implemented
 - test test test :P
 - generate documentation about it

How to use it
===========================
Build Instructions
1. Install the required library:
   ```
   brew install libusb
   ```
2. Build the project:
   ```
   make
   ```
3. Verify that the build was successful:
   ```
   ls bin/msxGameReader
   ```
   If `bin/msxGameReader` is displayed, the build was successful.

Execution Instructions
1. To run the program, use the following command:
   ```
   sudo ./bin/msxGameReader
   ```
   Note: `sudo` may be required to access the USB device. Make sure to connect the USB device before running.

2. If the program fails to read properly, try changing the USB connection. For example, inserting a USB 2.0 hub between the device and your computer may resolve the issue.
