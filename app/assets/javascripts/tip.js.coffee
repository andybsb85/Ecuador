# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#this is an unobstrusive javascript. In the link from index, the data attributes were sent

swap = (one, two, three, four, five, six) ->
    document.getElementById(one).style.display = "block" 
    document.getElementById(two).style.display = "none"
    document.getElementById(three).style.display = "none"
    document.getElementById(four).style.display = "none"
    document.getElementById(five).style.display = "none"
    document.getElementById(six).style.display = "none"

$ ->
  $("[data-po]").click (e) ->
    e.preventDefault()
    
    one = $(this).data("po")
    two = $(this).data("pt")
    three = $(this).data("ph")
    four = $(this).data("pf")
    five = $(this).data("pi")
    six = $(this).data("ps")
    swap(one, two, three, four, five, six)
    
#jQuery ->
#  $("button").click ->
#    $("p").hide()
  