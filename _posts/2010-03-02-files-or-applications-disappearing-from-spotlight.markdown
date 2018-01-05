---
layout: post
title: Files or Applications disappearing from Spotlight? How to fix the Spotlight
  index
date: '2010-03-02T08:58:00-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69202388769/files-or-applications-disappearing-from-spotlight
---
Occasionally, the Spotlight search results will not show files or applications that they used to show or will stop working altogether. Sometimes a simple reboot will fix the problem but in case that doesn’t work, here are the steps to clear out your Spotlight index and force it to reindex your file system.

Delete the current index

To delete the Spotlight index, open up the Terminal app and type in the following:

{% highlight shell %}
sudo rm -r /.Spotlight-V<tab>
{% endhighlight %}

Note: Do not type in the <tab> part. That is to force the Terminal app to load whatever your index folder is into the command.

How to make Spotlight reindex your file system

To force Spotlight to reindex your file system, use the Terminal app to run the following commands:

{% highlight shell %}
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
sudo mdutil -E /
{% endhighlight %}

Give it some time to reindex your file system. You’ll notice the processors working hard during this time. Depending on the amount of file on your system, this may take a few minutes or an hour or two.
