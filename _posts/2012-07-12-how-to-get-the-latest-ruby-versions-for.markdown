---
layout: post
title: How to get the latest ruby versions for rbenv/ruby-build
date: '2012-07-12T08:51:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69203878231/how-to-get-the-latest-ruby-versions-for
---
If you’ve been using [rbenv](https://github.com/sstephenson/rbenv/) to manage your rubies for a while, most likely you’ve come across the situation where you need to install a newer build of a ruby version but it isn’t available when you run \`rbenv install\`. If try to install it and you get something like this:

rbenv install 1.9.3-p125
ruby-build: definition not found: 1.9.3-p125

The key to getting this list updated is updating not rbenv but [ruby-build](https://github.com/sstephenson/ruby-build) since that is what manages the installation of the rubies. Depending on whether you installed directly by cloning from the [github repository](https://github.com/sstephenson/ruby-build) or used a package manager like [Homebrew](http://mxcl.github.com/homebrew/) (like I did), you’ll need to follow the correct steps for updating.

**Updating ruby-build using Homebrew**

Updating ruby-build with Homebrew is as simple as running the install command again and forcing it to link the newly built binaries.

`brew install ruby-build  
brew link -f ruby-build`

**Updating ruby-build using git**

To update ruby-build from the github repository, you’ll simply need to pull the newest version and run the install script.

`cd ~/.rbenv/plugins/ruby-build  
git pull`

That’s it! Now when you run the \`rbenv install\` command, you’ll have access to the latest builds of ruby.
