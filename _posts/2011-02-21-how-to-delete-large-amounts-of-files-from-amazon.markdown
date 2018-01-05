---
layout: post
title: How to delete large amounts of files from Amazon S3 buckets or folders
date: '2011-02-21T18:13:00-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69202813127/how-to-delete-large-amounts-of-files-from-amazon
---
[Update] You should use [S3 Lifecycle Policies](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/create-lifecycle.html) for this now.

Once we started using Amazon S3 for file storage at [Mailprotector](http://mailprotector.com), we were faced with the need to clean up stale files that were no longer needed. Since we only keep quarantined spam and viruses for a sliding window (currently 14 days), we have a need to daily clean up millions of files that are now stale.

After digging through the Amazon S3 API documentation, we realized there was no efficient way of mass deleting a large chunk of files. We structured the bucket using prefixes which operate as a sort of virtual folder structure in S3. We were thinking at the time there would be some easy way of saying, delete this folder and its contents. There is not.

Some additional research on how we could do this quickly led me to this ruby script to mass delete an entire bucket of files called [s3nukem](https://github.com/lathanh/s3nukem). It looked exactly like what we needed but there was one problem, we don’t want to delete the entire bucket, just a certain path inside of the bucket.

So after [forking the project](https://github.com/hathaway/s3nukem), I added an additional parameter to allow defining a path inside of the bucket to delete.

This works really well. With 50 threads running I was able to delete approximately 22,300 files in a minute. That translates to 1,338,000/hour, which now gives us the ability to clean up files fast. Of course if you throw more threads and CPU at it you can increase this rate even more.
