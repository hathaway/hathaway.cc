---
---

$(document).ready ->

  # fix main menu to page on passing
  $('header .main.menu').visibility
    type: 'fixed'

  # fix menu when passed
  # $('header .main.menu').visibility
  #   once: false
  #   onBottomPassed: ->
  #     $('.fixed.menu').transition('fade in')
  #   onBottomPassedReverse: ->
  #     $('.fixed.menu').transition('fade out')


  # create sidebar and attach to menu open
  $('.ui.sidebar').sidebar('attach events', '.toc.item')

  # lazy load images
  $('.image').visibility
    type: 'image'
    transition: 'vertical flip in'
    duration: 500
