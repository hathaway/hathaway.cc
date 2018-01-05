---
layout: post
title: How To Setup A Local DNS Host File On Mac OS X
date: '2008-06-23T13:03:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69201277837/how-to-setup-a-local-dns-host-file-on-mac-os-x
---
A local DNS host file can be very useful when working in a development environment. You can have a development environment and a production environment and simply point the host to the development environment on your machine while all of the other users are directed to the production environment. This allows you to work on the development environment and fully test prior to pushing the changes to the live production environment.

This is a fairly common practice but if you’ve never done it on Mac OS X, then you probably need a hint as to how to do this.

**Step 1:** Open up a Terminal windows (this is in your Applications/Utilites folder by default)

**Step 2:** Enter the following command to open the local host file. (Note: The sudo command requires an admin password to allow you to open this file as root.)

`$ sudo nano /etc/hosts`

**Step 3:** Now you can edit the host file. To add a new host entry, on it’s own line enter it in the format:

`IP Address Host
0.0.0.0 example.domain.com`

**Step 4:** Save the changes to your host file by pressing SHIFT + Z twice in vi.

As soon as you save this file the changes you made will take effect. To check the changes, you can ping the host you entered to see if it returns the correct address or just go to that host in a browser and see if your development environment opens instead of the production.
