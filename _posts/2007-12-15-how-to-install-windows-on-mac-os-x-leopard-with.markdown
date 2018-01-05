---
layout: post
title: How To Install Windows On Mac OS X Leopard With Boot Camp
date: '2007-12-15T15:06:00-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69201039847/how-to-install-windows-on-mac-os-x-leopard-with
---
One of the huge advantages of getting an Apple computer with the Intel processor is the ability to run a native boot version of Windows. Lets face it, we still live in a Windows world no matter how much faster, safer, and more productive the Mac OS X operating system is.

But as Apple continues it’s rise in popularity, you can feel safe in making the switch to an Apple computer now because there really is nothing it can’t do. With the addition of Apple Boot Camp software, which now comes with the Leopard version of Mac OS X, you can easily setup Windows XP or even Vista as a dual boot system.

There are a few tips that I can give you to make this process go smoothly because even though it is easy to get everything setup, there are a couple of things in the setup guide that I didn’t bother to read first that caused problems.

The first step is to run the Boot Camp Assistant application. You can find this by going to Applications -> Utilities. Run through the steps in this wizard and create the partition for your Windows installation. When you finish, it will ask you to put your Windows installation disk in.  **You will need to make sure you have a full installation disk, not an upgrade disk.  Also, if you are installing Windows XP then it has to be a SP2 install disk.**

Put in the installation disk and restart. This will allow it to boot to the installation disk and start the Windows installation process. Go through the installation wizard to the partition selection page. At this page, select the Windows partition you created with the Boot Camp Assistant. On the format options, make sure you select the Full format FAT32 option. You cannot use the Quick format option or it will cause problems with finishing the installation.

After the Windows installation has finished copying the installation files to the hard drive and restarts, make sure you hold down the Option button so it gives you the option to boot into the Windows partition. If you do not do this, you’ll never complete the installation because it will just keep booting to the Mac OS partition.

Once you’ve completed the Windows installation, you’ll need to run the setup.exe program from the Leopard installation disk to let it finish setting up and installing the drivers to make all of the hardware function correctly in windows.

One last optional step to improve the access to your Windows OS is to buy and install [Parallel’s Desktop 3.0 for Mac.](http://www.parallels.com/en/products/desktop/ "Parallel's Desktop 3.0 for Mac") This will give you the ability to run both operating systems at the same time as well as mirror and share files between the two operating system.
