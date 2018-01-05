---
layout: post
title: Rackspace CloudFiles & How to delete large amount of files
date: '2011-03-07T18:16:00-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69203227961/rackspace-cloudfiles-how-to-delete-large-amount
---
Last week, I was made aware of the fact that [Rackspace CloudFiles](http://www.rackspace.com/cloud/cloud_hosting_products/files/) doesn’t charge for put operations. This is a big difference in how they charge compared to [Amazon’s S3](http://aws.amazon.com/s3/) service.

It may seem inconsequential at first but think about any application using this storage space that has a lot of small files to push. Sometimes it is a source control system like git or svn that will accumulate a ton of small meta data files that will all need their own put call to be pushed to the storage system. These start to add up quickly.

Both storage systems still have an inability to quickly delete a large amount of files though. So I created a matching script to the [s3nukem](http://hathology.com/2011/02/how-to-delete-large-amounts-of-files-from-amazon-s3-buckets-or-folders/) from a few weeks ago that does the same thing but works with Rackspace CloudFiles. It’s called [cloudfiles-nukem](https://github.com/hathaway/cloudfiles-nukem).

There are some things S3 has that CloudFiles doesn’t. Mainly integration with the rest of the [AWS](http://aws.amazon.com) suite. But it is good to see competition for these cloud services.
