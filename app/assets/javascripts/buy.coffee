$ ->
  $p = -> $(".popup-wrapper-buy")

  $document = $(document)

  $document.on 'click', ".popup-close", ->
    $p().css "display", "none"
    return

  $document.on 'click', ".transparent", (e) ->
    $p().css "display", "none"  if e.target is this
    return

  $document.on 'click', "#buy-print", ->
    $p().css "display", "block"
    return
