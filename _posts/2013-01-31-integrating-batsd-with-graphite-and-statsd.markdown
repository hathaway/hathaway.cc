---
layout: post
title: Integrating batsd with graphite and statsd
date: '2013-01-31T18:54:00-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69111736622/integrating-batsd-with-graphite-and-statsd
---
At [Mailprotector](http://www.mailprotector.com) we recently integrated [batsd](https://github.com/noahhl/batsd) with our [graphite](http://graphite.readthedocs.org) statistics and metrics system. The result is a faster and native interface for querying our metrics data using ruby. This change has made it easy for us to create our own dashboards and reports in our Rails apps. Since batsd was built with compatibility for [statsd](https://github.com/etsy/statsd/), integrating was simple. Using the repeater option for statsd, we are able to continue to send the data to graphite but also repeat it to our batsd system. Here is an example of the repeater configuration.

{% highlight ruby %}
backends: [ "./backends/graphite", "./backends/repeater" ],
repeater: [ { host: '1.2.3.4', port: 8125 } ]
{% endhighlight %}

Now we have the data in two places. We can also optimize the retention in batsd for our needs there and keep using graphite setup the way it was.

The Batsd Client Gem
--------------------

We needed a client to query the data from batsd for our dashboards and reports we wanted to build in our internal Rails apps. There is an example ruby client provided in the batsd repository but nothing packaged up and ready to go. So using that example as a starting point, I created a [batsd ruby client](https://rubygems.org/gems/batsd) and bundled it up as a gem.

Installation
------------

It’s a simple gem installation.

{% highlight shell %}
gem install batsd`
{% endhighlight %}

Or you can include it in your Gemfile.

{% highlight ruby %}
gem "batsd"`
{% endhighlight %}

Getting Started
---------------

You can connect to Batsd by instantiating the Batsd class:

{% highlight ruby %}
client = Batsd.new
{% endhighlight %}

This assumes Batsd was started with a default configuration, and it listening on \`localhost\`, port \`8127\`. If you need to connect to a remote server or a different port, pass in the appropriate options:

{% highlight ruby %}
client = Batsd.new(:host => "10.0.0.1", :port => 8127)`
{% endhighlight %}

The options and defaults are:

{% highlight ruby %}
:host => "127.0.0.1"
:port => 8127
:timeout => 2000 #milliseconds
:max_attempts => 2
{% endhighlight %}

Now you can grab the list of available keys:

{% highlight ruby %}
keys = client.available
{% endhighlight %}

To pull the stats for a key:

{% highlight ruby %}
start_timestamp = Time.now - (60*60) # 1 hour ago
end_timestamp = Time.now
stats = client.stats("metric_name", start_timestamp, end_timestamp)
{% endhighlight %}

Each stat is returned as a hash with a `:timestamp` and `:value`. To pull only the timestamps or values for a range:

{% highlight ruby %}
start_timestamp = Time.now - (60*60) # 1 hour ago
end_timestamp = Time.now
values = client.values("metric_name", start_timestamp, end_timestamp)
timestamps = client.timestamps("metric_name", start_timestamp, end_timestamp)
{% endhighlight %}

Pull requests are always welcome. Just [fork the project](https://github.com/hathaway/batsd-client).
