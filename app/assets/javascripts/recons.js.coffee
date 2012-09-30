$(document).on( 'click', '#start-dashboard-btn', (event) ->
  $('#image1').addClass('blur')
  $('#presentation').fadeOut(1000)
  setTimeout(() ->
    $('#madlib').fadeIn(1000)
  , 1000)
)
