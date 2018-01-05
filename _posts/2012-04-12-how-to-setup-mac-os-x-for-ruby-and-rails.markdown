---
layout: post
title: How to setup Mac OS X for ruby and rails development
date: '2012-04-12T09:49:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69203784459/how-to-setup-mac-os-x-for-ruby-and-rails
---
Most developers spend their first day on a new computer setting up their develoment environment. If you are a ruby developer, this article should help you get started quickly.

I’m assuming you are starting with a clean install of Mac OS X Lion. A similar environment could be created off of the same or similar tools for a Linux machine.

The pieces of this development environment are:

*   rbenv
*   ruby-build
*   ruby
*   bundler
*   rails
*   MySQL
*   redis
*   pow

This should give you a broad set of tools that will cover most development environment needs. You could easily add more tools to your environment if needed.

![](http://hathaway.cc/wp-includes/js/tinymce/plugins/wordpress/img/trans.gif "More...")

Install Xcode
-------------

Xcode provides many of the necessary compilers and libraries needed for your development environment.

As of Lion, this is an easy install via the Mac App Store. It is a large download so while this step is easy, it will take some time to download and install.

The following link will take you to the Mac App Store to install.

[http://itunes.apple.com/us/app/xcode/id497799835?mt=12](http://itunes.apple.com/us/app/xcode/id497799835?mt=12)

Install Homebrew
----------------

Homebrew is the easiest and most flexible way to install the UNIX tools Apple didn’t include with OS X.

[http://mxcl.github.com/homebrew](http://mxcl.github.com/homebrew)

To install run the following command:

    /usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

You can see detailed instructions on what happens when you run this command to install here:

[https://github.com/mxcl/homebrew/wiki/installation](https://github.com/mxcl/homebrew/wiki/installation)

Remove RVM (if necessary)
-------------------------

If you have previously used RVM in your environment, you’ll want to get rid of this so it doesn’t interfere with your new environment. This is a simple task. Just run:

    rvm implode

Install MySQL Server
--------------------

Now that we have homebrew installed, these installations become simple single line commands.

    brew install mysql

Install Redis (optional)
------------------------

Redis is an open source, advanced key-value store. It has many uses such as caching and serving as a queue for background jobs (via resque).

Once again, an easy to install with homebrew.

    brew install redis

Install rbenv and ruby-build
----------------------------

The basis of this environment is rbenv which allows you to run self-contained ruby environments for each of your projects. This setup has huge advantages over a system wide install of ruby that would force you to keep all of your projects on the same version of ruby as well as gems.

I chose rbenv over rvm because it’s simple, unobtrusive, and follows the UNIX tradition of single-purpose tools that do one thing well.

[https://github.com/sstephenson/rbenv](https://github.com/sstephenson/rbenv)

[https://github.com/sstephenson/ruby-build](https://github.com/sstephenson/ruby-build)

Use homebrew to install.

    brew install rbenv

Add to ~/.bash_profile:

    eval "$(rbenv init -)"

I like to alias the \`bundle exec\` command to just \`b\` to save some typing. If you prefer not to do that, just skip adding that line to the .bash_profile.

Restart your Terminal.

Install pow
-----------

Pow is a zero-config Rack server for Mac OS X. Instead of running the rails server manually for each of your projects, pow runs it for you and gives you a simple hostname to. So instead of going to http://localhost:3000 after starting your rails server, you can just go straight to [http://project.dev](http://project.dev) (where “project” is replaced with the folder name of your project.

[http://pow.cx](http://pow.cx)

Note: I’ve had trouble using pow before when using custom DNS servers in my Network settings. If something isn’t working right when you try to use pow, check your DNS settings and make sure you are using the defaults.

To install pow, simply run:

    curl get.pow.cx | sh

You can view this script before running it on their website.

Install ruby
------------

Now we can install our rubies. At the time of writing this I had projects running on both 1.8.7 and 1.9.3 so I’m going to show you how to setup both and set one as the global version.

Install ruby 1.9.3:

    rbenv install 1.9.3-p0

Install ruby 1.8.7:

    rbenv install 1.8.7-p352

After installing a new ruby or a global gem, you need to run the following command.

    rbenv rehash

Set the global ruby to 1.9.3:

    rbenv global 1.9.3-p0

Configure your global gem settings
----------------------------------

I typically always just use [Google](http://google.com) and the online documentation for [ruby](http://ruby-doc.org/), [rails](http://guides.rubyonrails.org/ "Rails Guides"), and other gems. So installing the rdoc’s for all of our gems is a waste. I prefer to disable this in a .gemrc file.

Add this line to the ~/.gemrc file:

    gem: --no-rdoc --no-ri

Install bundler
---------------

Bundler manages an application’s dependencies through its entire life across many machines systematically and repeatably.

Bundler has to be installed for each version of ruby you want to run it on.

    rbenv shell 1.9.3-p0

Configure bundler in ~/.bundle/config:

    BUNDLE_PATH: vendor/bundle

This line tells bundler to install my gems in a relative path specific to each project.

Install Rails
-------------

Similar to bundler, you want to install the rails gem for each of your ruby versions.

    rbenv shell 1.9.3-p0

Setup your first Rails project
------------------------------

Now you’re ready to setup your first project. We are going to create a sample project called “blog”.

Create a projects folder if you don’t already have one.

    mkdir ~/Projects

Remember that we want to use MySQL as the database for the Rails project so we are going to pass that in with the rails command.

    rails new blog --database=mysql

Set the project specific ruby version.

    cd ~/Projects/blog

This sets a local per-project Ruby version by writing the version name to an .rbenv-version file in the current directory.

Now run bundler on your new project.

    bundle install

This will install all of the gems for this project into:

    ~/Projects/blog/vendor/bundle

If you ever get into a situation where your gems are working correctly, you can simple delete that entire bundle directory and run bundle install again to get fresh versions of everything for your project.

To setup pow for your new rails project, just create a symbolic link to the project folder in the ~/.pow directory.

    cd ~/.pow

That’s it! Now you should be able to access your new project at:

[http://blog.dev](http://blog.dev)

Other apps you might want
-------------------------

### GitHub

I highly recommend using GitHub to host your projects. They offer a free app for working with git repositories and it makes it super easy to use with their service.

[http://mac.github.com](http://mac.github.com)

### Sublime Text 2

This is the text editor I use and prefer. It has a lot of cool features and is very customizable.

[http://www.sublimetext.com/2](http://www.sublimetext.com/2)

### MySQL Workbench

MySQL offers a free app for managing your MySQL databases.

[http://www.mysql.com/products/workbench](http://www.mysql.com/products/workbench)
