---
layout: post
title: How To Flush DNS Cache On Mac OS X Leopard
date: '2008-12-19T12:16:00-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69202193341/how-to-flush-dns-cache-on-mac-os-x-leopard
---
Occasionally, you’ll want to be sure you are getting fresh DNS information during development or working on servers with hostnames. This has changed in the Leopard version of Mac OS X. The following command will now flush your DNS cache on Mac OS X Leopard:

`dscacheutil -flushcache`
