# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#this is an unobstrusive javascript. In the link from index, the data attributes were sent

swap = (one, two, three) ->
    document.getElementById(one).style.display = "block" 
    document.getElementById(two).style.display = "none"
    document.getElementById(three).style.display = "none"

$ ->
  $("[data-po]").click (e) ->
    e.preventDefault()
    
    one = $(this).data("po")
    two = $(this).data("pt")
    three = $(this).data("ph")
    swap(one, two, three)
    
#jQuery ->
#  $("button").click ->
#    $("p").hide()
  