$(document).ready ->
  $ ->
  header = $(".header.home")
  menu = $(".header ul li")
  $(window).scroll ->
    scroll = $(window).scrollTop()
    if scroll >= 100
      header.addClass "transparent-header"
      menu.removeClass "transparent-menu"
    else
      header.removeClass("transparent-header")
      menu.addClass "transparent-menu"
    return

  return