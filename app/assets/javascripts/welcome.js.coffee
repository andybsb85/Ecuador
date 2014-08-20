# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $('#calendar').fullCalendar({
    theme: true
    events:  '/events.json'
    eventColor: '#008CBA'
    header: {
    left: 'prev,next today'
    center: 'title'
    right: null
    }
    height: 260
  });
  
$("#div1").show();


      
  