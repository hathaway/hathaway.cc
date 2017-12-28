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

When I turned 30 in 2012, I decided to do something new to challenge myself physically. I started running obstacle course races. I also ran a 10k street race but I find normal street races a little boring.

My first OCR was a Tough Mudder in October 2012 and immediately became hooked. Since then I have run {{ site.races | size }} races totaling {{ total_distance | round }} miles. These include Spartan, Tough Mudder, Goruck, Superhero Scramble, Cooper River Bridge Run, and some local mud runs. The full list is below.

My goal is to continue running at least one race every year until my boys are old enough to run them with me. This year my oldest two ran their first Spartan Race so they are getting close.
