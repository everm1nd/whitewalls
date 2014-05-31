$(document).ready ->
  init = ->
    window.addEventListener "scroll", (e) ->
      distanceY = window.pageYOffset or document.documentElement.scrollTop
      shrinkOn = 60
      header = document.querySelector(".logo img")

      if distanceY > shrinkOn
        header.setAttribute "class", "smaller"
      else
        header.removeAttribute "class"
      return

    return
  window.onload = init()