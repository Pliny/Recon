$(document).on( 'click', '#start-dashboard-btn', (event) ->
  $('#image1').addClass('blur')
  $('#presentation').fadeOut(500)
  setTimeout(() ->
    $('#madlib').fadeIn(500)
  , 500)
)
