---
layout: post
title: How To Completely Disable Mac OS X Spotlight
date: '2008-09-23T17:46:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69201690370/how-to-completely-disable-mac-os-x-spotlight
---
One of the primary features of the Mac OS X operating system is their search feature called **Spotlight**. Many Mac OS X users depend on this great feature but others don’t find it necessary. For those of you who don’t find it necessary, it can improve the performance of your Mac OS X system if you disable it.

To do this, follow these simple steps.

Note that some other Mac OS X features and programs are based on Spotlight’s search abilities, therefore some applications could behave abnormally if you disable Spotlight, particularly in search functions.

_Important: These instructions were created based on Mac OS X 10.5 Leopard. They may work on previous or future versions of OS X but they may not._

1.  Launch Terminal and type the following command: `sudo nano /etc/hostconfig`
2.  Find the following entry in the hostconfig file: `SPOTLIGHT=-YES-`
3.  Change `SPOTLIGHT=-YES-` to `SPOTLIGHT=-NO-`
4.  Save /etc/hostconfig by hitting Control-O and the return key. Next hit Control-X to exit the nano editor.
5.  Disable the Spotlight index by typing the following in the Terminal:  
    `sudo mdutil -i off /`
6.  To erase the current Spotlight index, type: sudo `mdutil -E /`
7.  When you reboot, Spotlight will be completely disabled.

If you find a need for Spotlight later, follow my article on [How To Re-enable Mac OS X Spotlight]({{ site.baseurl }}{% post_url 2008-09-23-how-to-re-enable-mac-os-x-spotlight %}).
