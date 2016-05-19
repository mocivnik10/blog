# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#articles-slider .carousel-inner > .item:first').addClass 'active'
$(document).ready ->
  $('#articles-slider').carousel interval: 5000
  return
