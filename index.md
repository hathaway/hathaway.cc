---
layout: home
---

My name is [Ben Hathaway](/about/). I'm an engineer and I build software products. I currently serve as the Chief Technology Officer of [Mailprotector][mailprotector].

I have a wonderful [partner](https://www.instagram.com/kickin_cash/) in life. She makes me better in everything I do and is an incredible mom to our three boys. We currently live in the [Greenville, South Carolina](https://www.instagram.com/visitgreenvillesc/) area but I was born and raised in the [Buckeye State](https://en.wikipedia.org/wiki/Ohio).

<!-- I've been building software since 2003 when I released my first software product from my dorm room on the campus of the [University of Cincinnati][uc]. That was Product Idea Profitability Evaluator. The name was a mouthful so we called it "PIPE". PIPE used real time bid data feeds from paid search engines to evaluate the online market potential of a product idea.

I launched my second company and first [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) product, Mortgage Web Success, in 2004 while I was finishing my Computer Engineering degree. Mortgage Web Success is a fully integrated online marketing system designed specifically for mortgage and loan professionals to give them an online presence that generates new business. Some of its main features include a hosted website, content management system, CRM, secure online loan application, and a marketing automation system.

In 2008, I invested in and joined [Mailprotector][mailprotector] as the Director of Development. Shortly after that I became the Chief Technology Officer and have enjoyed serving in that role ever since. We've done a lot at Mailprotector over the last 10 years.-->

<!-- Read more about that here. -->

{% assign total_distance = 0 %}
{% for race in site.races %}
  {% assign total_distance = total_distance | plus: race.distance.miles %}
{% endfor %}

In addition to building software, I like to stay active. In 2012, when I turned 30, I started running obstacle course races. My first OCR was a [Tough Mudder](https://toughmudder.com) in October of that year and I immediately became hooked. Since then I have run {{ site.races | size }} races totaling {{ total_distance | round }} miles across events like [Spartan Race](https://spartan.com), Tough Mudder, [GORUCK](https://goruck.com) Nasty, Superhero Scramble, and the [Cooper River Bridge Run](http://bridgerun.com/). You can see the [full list here](/races/). My goal is to continue running at least one race every year until my boys are old enough to run them with me. This year my oldest two ran their [first Spartan Race](https://www.instagram.com/p/BbFtUi_nubc/) so they are getting close.

I also enjoy [woodworking](https://photos.app.goo.gl/1cztk2OLWR6e2VUv1), [building](https://photos.app.goo.gl/UVvpXJ19cFppM7513) [cool](https://photos.app.goo.gl/mf4DADvxZrvNMxhK2) [things](https://www.instagram.com/p/lBZwQupNZu), and [skiing](https://photos.app.goo.gl/dwhUuRgH4uhmgFit1).

[uc]: http://ceas.uc.edu
[mailprotector]: https://mailprotector.com
[bracket-mp]: https://mailprotector.com/bracket
