---
layout: post
title: How To Setup A Permanent Redirect (HTTP 301) With PHP
date: '2008-09-25T08:26:00-04:00'
tags: []
tumblr_url: http://hathaway.cc/post/69202089092/how-to-setup-a-permanent-redirect-http-301-with
---
The HTTP 301 status code is meant for use when you want to redirect a page or URL to its new destination after reorganizing or moving a web site around. This can be on the same domain or an entirely new domain. Here is the W3C definition of the 301 code.

> The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs. Clients with link editing capabilities ought to automatically re-link references to the Request-URI to one or more of the new references returned by the server, where possible. This response is cacheable unless indicated otherwise.
>
> The new permanent URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).
>
> If the 301 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.  
> [W3C Hypertext Transfer Protocol](http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.2)

This is particularly useful for search engines like Google, which will carry over page rank to the new page if this status code is seen. If you do not need to indicate permanent displacement, you can accomplish redirection by setting a Location header in PHP. The _location_ header does the actual redirection to the new location, and can be used by itself.

If you set the Location header by itself, PHP automatically sets the status code to _HTTP/1.1 302 Found_.

Note, if you attempt to send headers after content has been sent, you will get a warning like, _“Warning: Cannot modify header information - headers already sent by …”_. Watch out for empty lines and spaces between PHP open and close tags.

Here is the code to do this in PHP…

{% highlight php %}
<?php  
// Permanent redirection  
header("HTTP/1.1 301 Moved Permanently");  
header("Location: [http://www.example.com/](http://www.example.com/)");  
exit();  
?>
{% endhighlight %}

Just make sure you put these lines in your page before any other content is sent out. The [http://www.example.com/](http://www.example.com/) part can be changed to whatever the new address for this resource is.
