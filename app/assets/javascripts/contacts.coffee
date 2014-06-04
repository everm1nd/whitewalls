$(document).ready ->
  p = $(".popup-wrapper-contacts")

  $("#about-popup-contacts").click ->
    p.css "display", "block"
    return

  $(".popup-wrapper-contacts .transparent").click (event) ->
    e = event or window.event
    $(p).css "display", "none"  if e.target is this
    return

  $(".popup-close").click ->
    p.css "display", "none"
    return