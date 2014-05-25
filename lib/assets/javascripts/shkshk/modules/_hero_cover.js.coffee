class HeroCover
  constructor: (@$el) ->
    @_bindEvents()

  recalculateBodyClass: ->
    if $(window).height() < @$el.height()
      $('body').addClass('cover-image-is-too-high')
    else
      $('body').removeClass('cover-image-is-too-high')

  resizeCoverImage: ->
    ratio = parseFloat(@$el.attr('data-ratio'))
    newHeigth = Math.floor(document.documentElement.clientWidth / ratio)
    @$el.css(height: newHeigth)

  _bindEvents: ->
    $(window).on('debouncedresize', @_handleWindowResize)

  _handleWindowResize: =>
    @resizeCoverImage()
    @recalculateBodyClass()

$ ->
  @hero_cover = new HeroCover($('#main-cover-image'))
  @hero_cover.recalculateBodyClass()
