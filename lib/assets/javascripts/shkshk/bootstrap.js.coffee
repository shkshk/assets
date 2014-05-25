//= require jquery.smooth-scroll
//= require jquery.placeholder
//= require jquery.fancybox
//= require_tree modules

$ ->
  $('input[placeholder]').placeholder()

  $('.smooth').smoothScroll(afterScroll: -> window.location.hash = @.hash)

  $('.fancybox').fancybox(
    padding: 0
    margin: 15
    arrows: false
    nextClick: true
    openEffect: 'none'
    closeEffect: 'none'
    nextEffect: 'none'
    prevEffect: 'none'
    beforeShow: -> $('body').addClass('is-dimmed')
    beforeClose: -> $('body').removeClass('is-dimmed')
  )
