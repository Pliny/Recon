$(document).on( 'click', '#start-dashboard-btn', (event) ->
  $('#image1').addClass('blur').removeClass('sharp')
  $('#presentation').fadeOut(500)
  setTimeout(() ->
    $('#madlib').fadeIn(500)
  , 500)
  window.history.pushState({}, "", "recons/new")
)

$(document).on('click', '#logo-open, #start-again', (event) ->
  $('#image1').removeClass('blur').addClass('sharp')
  $('#results').hide()
  $('#image1').removeClass('new-height')
  if $('#presentation:visible').length is 0
    $('#madlib').fadeOut(500)
    setTimeout(() ->
      $('#presentation').fadeIn(500)
    , 500)
  window.history.pushState({}, "", "/")
)

$(document).on('ajax:success', '#new_recon', (evt, data, status, xhr) ->
  $('#results').fadeIn('slow')
  $('#results').html(data)
  $('#madlib').hide()
  $('#image1, #header').addClass('slider').addClass('new-height')
  $('#competitors').isotope({
    itemSelector: '.competitor',
    layoutMode: 'fitRows'
  })
)

$(document).on('click', '.c-close', (event) ->
  $element = $(this).parent().parent()
  $('#competitors').isotope( 'remove', $element )
)

$(document).on('click', '#bubble-view', (event) ->
  $(this).addClass('bubble-view-on')
  $('#grid-view').addClass('grid-view-off')
)

$(document).on('click', '#grid-view', (event) ->
  $('#bubble-view').removeClass('bubble-view-on')
  $(this).removeClass('grid-view-off')
)
$(document).on('ajax:success', '#bubble-view', (evt, data, status, xhr) ->
  $('#competitors').html(data)
)
