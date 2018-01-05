---
layout: post
title: How to fix git after upgrading to Mountain Lion
date: '2012-07-25T10:19:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69204326450/how-to-fix-git-after-upgrading-to-mountain-lion
---
During the process of upgrading to OS X Mountain Lion (10.8), it seems that [git](http://git-scm.com) was removed so I was unable to run commands from Terminal.

{% highlight shell %}
$ git -v
-bash: git: command not found
{% endhighlight %}

This was a big problem for me since I typically run a git command within the first 15 minutes of sitting down at my computer.

Fixing this wasn’t as easy as I had originally thought it would be. Previously I installed git using [Homebrew](http://mxcl.github.com/homebrew/). Unfortunately, simply running `brew install git` didn’t do the trick this time. First it threw a warning about having and old version of Xcode (4.3.3) and then it failed to compile.

{% highlight shell %}
$ brew install git
Warning: You have Xcode-4.3.3, which is outdated.
Please install Xcode 4.4.

Error: Failed executing: make prefix=/usr/local/Cellar/git/1.7.11.3 CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang CFLAGS=-Os\ -w\ -pipe\ -march=native\ -Qunused-arguments\ -mmacosx-version-min=10.8 LDFLAGS=-L/usr/local/lib install (git.rb:49)
{% endhighlight %}

I figured that the warning and the failure to compile were probably related so I started by updating to Xcode 4.4. Since Xcode is distributed through the App Store now, this should be simple right? Wrong. At the time the App Store was still showing version 4.3.3. So I had to download Xcode 4.4 directly from Apple’s developer website. If you aren’t an Apple developer you may be stuck waiting for the App Store to update with 4.4. **Update:** It looks like the App Store has updated with [Xcode 4.4](http://itunes.apple.com/us/app/xcode/id497799835?mt=12).

Xcode 4.4 dosen’t install the command line tools automatically. You have open up Xcode, go to Preferences -> Downloads then click install on command line tools.
Now you will be able to install git again using Homebrew:

`brew install git`
