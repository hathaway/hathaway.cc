---
layout: post
title: How To Re-enable Mac OS X Spotlight
date: '2008-09-23T17:51:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69201859263/how-to-re-enable-mac-os-x-spotlight
---
If you have previously disabled the Mac OS X Spotlight feature and you now find that you would like to turn it on again, following these steps to do so.

1.  Launch Terminal and type the following command: `sudo nano /etc/hostconfig`
2.  Find the following entry in the hostconfig file: `SPOTLIGHT=-NO-`
3.  Change `SPOTLIGHT=-NO-` to `SPOTLIGHT=-YES-`
4.  Save /etc/hostconfig by hitting Control-O and the return key. Next hit Control-X to exit the nano editor.
5.  Disable the Spotlight index by typing the following in the Terminal:` sudo mdutil -i on /`
6.  When you reboot, Spotlight will be enabled again.

If you would like to disable the Mac OS X Spotlight feature, follow my article on [How To Completely Disable Mac OS X Spotlight]({{ site.baseurl }}{% post_url 2008-09-23-how-to-completely-disable-mac-os-x-spotlight %}).
