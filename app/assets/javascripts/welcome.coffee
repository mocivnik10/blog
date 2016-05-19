# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $('#articles-slider .carousel-inner > .item:first').addClass 'active'
  $('#articles-slider').carousel interval: 5000
  return
