$(document).on( 'click', '#start-dashboard-btn', (event) ->
  $('#image1').addClass('blur').removeClass('sharp')
  $('#presentation').fadeOut(500)
  setTimeout(() ->
    $('#madlib').fadeIn(500)
  , 500)
  window.history.pushState({}, "", "recons/new")
)

$(document).on('click', '#logo-open', (event) ->
  $('#image1').removeClass('blur').addClass('sharp')
  if $('#presentation:visible').length is 0
    $('#madlib').fadeOut(500)
    setTimeout(() ->
      $('#presentation').fadeIn(500)
    , 500)
  window.history.pushState({}, "", "/")
)
