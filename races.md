---
layout: races
title: OCRs
permalink: /races/
main_menu: true
---

{% assign total_distance = 0 %}
{% for race in site.races %}
  {% assign total_distance = total_distance | plus: race.distance.miles %}
{% endfor %}

When I turned 30 in 2012, I wanted to do something new to challenge myself physically. I decided to try my first obstacle course race.

My first OCR was a Tough Mudder in October 2012 and I immediately became hooked. Since then I have run {{ site.races | size }} races totaling {{ total_distance | round }} miles. These include several different types of OCRs such as Spartan, Tough Mudder, GORUCK, Superhero Scramble, and a local mud run. The full list is below. I also ran a 10k street race but I find normal street races a little boring.

My goal is to continue running at least one race every year of my 30s. At that point my boys will be old enough to run them with me. This year my oldest two boys ran their first 1 mile Spartan Kids race so they are getting close.
