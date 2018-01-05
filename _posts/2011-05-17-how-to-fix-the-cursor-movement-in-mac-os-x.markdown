---
layout: post
title: How to fix the cursor movement in Mac OS X Terminal
date: '2011-05-17T18:47:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69203676487/how-to-fix-the-cursor-movement-in-mac-os-x
---
I’ve been frustrated with the limited cursor movement out of the box in Mac OS X Terminal for years. Usually I’m always working in a linux server session so it never bothered me enough to figure it out. But I finally got sick enough to figure out the keyboard mappings to make Terminal better.

Specifically I’m referring to control + left/right or alt + left/right as well as the home or end keys. In linux terminals, these will jump you word by word and to the beginning or end of the command line respectively. Not so much in Mac OS X Terminal.

So here is the list of keyboard mappings to add/modify. You can find these under Terminal -> Preferences -> Settings -> Keyboard. I’m doing this on Snow Leopard 10.6.7.

Hint: The best way to do these is to copy/paste the action so you don’t have to figure out the correct key strokes to get the action correct.

*   **Key - Action**
*   home - \\033OH
*   end - \\033OF
*   control cursor left - \\033b
*   control cursor right - \\033f
*   option cursor left - \\033b
*   option cursor right - \\033f
*   forward delete - \\004

I’ll be sure to update this as I find more useful mappings. Feel free to leave a comment if you know of additional mappings that might be useful.
