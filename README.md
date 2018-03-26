# hathaway.cc

# How to deploy to S3

From the root of this project, run the following commands.

To build the lates version of the site:

`jekyll build`

To sync those new changes with the S3 bucket:

`aws s3 sync _site s3://hathaway.cc --profile hathaway`

That command will sync and changed files with the S3 bucket. There is a CDN setup
for mailprotector.com so changes will show up after the cache has refreshed.

To view the changes directly on S3 and bypass the CDN cache, go to:

http://hathaway.cc.s3-website.us-east-2.amazonaws.com/

Cache invalidation

`aws cloudfront create-invalidation --distribution-id E2IKQ1AG2RB7OM --paths "/bookshelf/" --profile hathaway`



Markdown example

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
