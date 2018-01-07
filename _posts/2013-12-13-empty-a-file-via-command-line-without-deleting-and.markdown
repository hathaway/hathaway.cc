---
layout: post
title: Empty a file via command line without deleting and recreating
date: '2013-12-13T12:00:15-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69890114098/empty-a-file-via-command-line-without-deleting-and
---
This is another common administrative task I find myself needing to do on Linux or Unix machines. Typically I’ll have a log file that has grown large that I want to empty but without removing and recreating the file. This simple command does that.

`cat /dev/null > filename.log`
