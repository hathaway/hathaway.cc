---
layout: post
title: Delete specific jobs from a Resque queue
date: '2013-12-05T17:52:44-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69111438646/delete-specific-jobs-from-a-resque-queue
---
This is a handy little piece of code in case you have jobs of a certain type that you want deleted from your Resque queues. The [`Resque.destroy`](http://rubydoc.info/github/defunkt/resque/Resque/Job#destroy-class_method) method allows you to define the queue to clean up and the class name of the job type you want removed.

The following call will remove all jobs of class `UpdateGraph`:

{% highlight ruby %}
Resque::Job.destroy(queue, 'UpdateGraph')
{% endhighlight %}

You can also specify arguments to filter out certain jobs of that type:

{% highlight ruby %}
Resque::Job.destroy(queue, 'UpdateGraph', 'foo')
{% endhighlight %}

Keep in mind the performance of this function is not fast:

> This method can be potentially very slow and memory intensive, depending on the size of your queue, as it loads all jobs into a Ruby array before processing.
