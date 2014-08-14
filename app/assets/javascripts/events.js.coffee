# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#event_date').datepicker
    dateFormat: 'yy-mm-dd'
    
jQuery ->
$('#calendars').fullCalendar({
  theme: true
  events:  '/events.json'
  eventColor: '#f50504'
  header: {
  left: 'prev,next today'
  center: 'title'
  right: null
  }
  height: 200
});


$(document).foundation({
  orbit: {
    animation:slide,
    pause_on_hover:true,
    animation_speed: 600,
    timer_speed: 5000,
    navigation_arrows:true,
    bullets:false,
    next_on_click: false,
    timer: true,
    circular: true,
    slide_number: false
  }
})


