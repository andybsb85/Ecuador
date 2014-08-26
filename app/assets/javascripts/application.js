// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require foundation
//= require underscore
//= require gmaps/google
//= require social-share-button
//= require jquery.ui.datepicker
//= require fancybox
//= require fullcalendar
//= require jquery.sliders
//= require_tree .

$(function(){ $(document).foundation(); });

function printpage()
  {
  window.print()
  }

$(document).foundation({
  orbit: {
    animation: 'slide',
    timer_speed: 1000,
    pause_on_hover: true,
    animation_speed: 600,
    navigation_arrows: true,
    bullets: false
  }
});

setTimeout(function(){
   $(window).trigger('resize');        
}, 0);

 $(document).ready(function () {
        $("#slideshow1").sliders();
        $("#slideshow2").sliders({ interval: 1000 });
 });

