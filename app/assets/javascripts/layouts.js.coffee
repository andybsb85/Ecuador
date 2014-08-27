

openwindow = (social) ->
  window.open(social)


$ ->
  $("a[data-social]").click (e) ->
    e.preventDefault()
    
    social = $(this).data("social")
    openwindow(social)

    
openwindow = (despegar) ->
  window.open(despegar)


$ ->
  $("a[data-despegar]").click (e) ->
    e.preventDefault()
    
    despegar = $(this).data("despegar")
    openwindow(despegar)
    
    
    
    