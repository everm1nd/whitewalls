$(document).ready ->
  init = ->
    window.addEventListener "scroll", (e) ->
      distanceY = window.pageYOffset or document.documentElement.scrollTop
      shrinkOn = 160
      header = document.querySelector(".header .home")

      if distanceY > shrinkOn
        header.setAttribute "class", "transparent-header"
      else
        header.removeAttribute "class"
      return

    return
  window.onload = init()