

openwindow = (social) ->
  window.open(social)


$ ->
  $("a[data-social]").click (e) ->
    e.preventDefault()
    
    social = $(this).data("social")
    openwindow(social)
