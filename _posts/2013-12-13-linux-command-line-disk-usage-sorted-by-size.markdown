---
layout: post
title: Linux command line disk usage sorted by size
date: '2013-12-13T12:06:52-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69890569990/linux-command-line-disk-usage-sorted-by-size
---
Here is another command to add to the list of administrative commands I frequently need on Linux. To easily view the size of the directories in the directory you are currently in sorted by size, run the following.

`du --block-size=MiB --max-depth=1 | sort -n`

This command lists the directories with their sizes in megabytes and sorts the results by size in ascending order. If you prefer to sort in descending order, use this command.

`du --block-size=MiB --max-depth=1 | sort -rn`
