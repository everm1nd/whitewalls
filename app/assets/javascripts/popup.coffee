$(document).ready ->
  p = $(".popup-wrapper")

  $("#about-popup").click ->
    p.css "display", "block"
    return

  $(".popup-wrapper .transparent").click (event) ->
    e = event or window.event
    $(p).css "display", "none"  if e.target is this
    return

  $(".popup__close").click ->
    p.css "display", "none"
    return