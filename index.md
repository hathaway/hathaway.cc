---
layout: home
---

My name is [Ben Hathaway](/about/). I'm an engineer and I build software products. I currently serve as the Chief Technology Officer at [Mailprotector][mailprotector].

I have a wonderful [partner](https://www.instagram.com/kickin_cash/) in life. She makes me better in everything I do and is an incredible mom to our three boys. We currently live in the [Greenville, South Carolina](https://www.instagram.com/visitgreenvillesc/) area but I was born and raised in the [Buckeye State](https://en.wikipedia.org/wiki/Ohio).

{% assign total_distance = 0 %}
{% for race in site.races %}
  {% assign total_distance = total_distance | plus: race.distance.miles %}
{% endfor %}

In addition to building software, I like to spend my time  [woodworking](https://photos.app.goo.gl/1cztk2OLWR6e2VUv1), [building things](https://photos.app.goo.gl/UVvpXJ19cFppM7513), [DIY](https://www.instagram.com/p/lBZwQupNZu) [projects](https://photos.app.goo.gl/mf4DADvxZrvNMxhK2), and staying active. In 2012, I started running obstacle course races. My first OCR was a [Tough Mudder](https://toughmudder.com) in October of that year. Since then I have run {{ site.races | size }} races totaling {{ total_distance | round }} miles across events like [Spartan Race](https://spartan.com), [Tough Mudder](https://toughmudder.com), [GORUCK](https://goruck.com) Nasty, Superhero Scramble, and the [Cooper River Bridge Run](http://bridgerun.com/). You can see the [full list here](/races/).

[uc]: http://ceas.uc.edu
[mailprotector]: https://mailprotector.com
[bracket-mp]: https://mailprotector.com/bracket
