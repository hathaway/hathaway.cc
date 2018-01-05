---
layout: post
title: How to import Bind zone files into Amazon Route 53
date: '2011-02-23T07:30:00-05:00'
tags: []
tumblr_url: http://hathaway.cc/post/69203126744/how-to-import-bind-zone-files-into-amazon-route-53
---
At [Mailprotector](http://mailprotector.com), we are giving Amazon's [Route 53](http://aws.amazon.com/route53/) DNS service a try to give our DNS infrastructure an instant boost.

> It answers DNS queries with low latency by using a global network of DNS servers. Queries for your domain are automatically routed to the nearest DNS server, and thus answered with the best possible performance.

The cost to setup the equivalent DNS network on our own is ridiculous compared to the cost of Route 53. And given the API functionality, we can easily integrate our backend systems to do dynamic updates to DNS to control routing of mail on the fly.

But getting our existing DNS zones into Route 53 was an immediate challenge as we have many custom records for controlling routing. In order to be sure we got the zones imported exactly, we wanted to be able to do it directly off of the zone files.

After some quick searching around and playing with a few options, I discovered the [cli53](https://github.com/barnybug/cli53) interface gave us exactly what we needed. It is a python script that uses a command line interface but makes the task of importing very easy.

There was one catch though. The zone files we had didn’t have origin defined in them and resulted in an UnknownOrigin exception being thrown when we initially tried the import. This was easy fix. Just simply adding the following line to the top of the zone file fixed the issue:

`$ORIGIN domain.com.`

One command later we had an entire zone fully setup in Route 53.
