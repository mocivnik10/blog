# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on "page:change", ->
  $('#1-star').bind
    mouseenter: (e) ->
      $(this).children().removeClass 'fa-star-o'
      $(this).children().addClass 'fa-star'
      return
    mouseleave: (e) ->
      $(this).children().removeClass 'fa-star'
      $(this).children().addClass 'fa-star-o'
      return
    click: (e) ->
      $(this).unbind 'mouseenter mouseleave'
      $('#2-star, #3-star, #4-star, #5-star').children().removeClass 'fa-star'
      $('#2-star, #3-star, #4-star, #5-star').children().addClass 'fa-star-o'
      $('#rate').val 1
      return
  $('#2-star').bind
    mouseenter: (e) ->
      $(this).children().removeClass 'fa-star-o'
      $(this).children().addClass 'fa-star'
      return
    mouseleave: (e) ->
      $(this).children().removeClass 'fa-star'
      $(this).children().addClass 'fa-star-o'
      return
    click: (e) ->
      $(this).unbind 'mouseenter mouseleave'
      $('#1-star, #3-star, #4-star, #5-star').children().removeClass 'fa-star'
      $('#1-star, #3-star, #4-star, #5-star').children().addClass 'fa-star-o'
      $('#rate').val 2
      return
  $('#3-star').bind
    mouseenter: (e) ->
      $(this).children().removeClass 'fa-star-o'
      $(this).children().addClass 'fa-star'
      return
    mouseleave: (e) ->
      $(this).children().removeClass 'fa-star'
      $(this).children().addClass 'fa-star-o'
      return
    click: (e) ->
      $(this).unbind 'mouseenter mouseleave'
      $('#1-star, #2-star, #4-star, #5-star').children().removeClass 'fa-star'
      $('#1-star, #2-star, #4-star, #5-star').children().addClass 'fa-star-o'
      $('#rate').val 3
      return
  $('#4-star').bind
    mouseenter: (e) ->
      $(this).children().removeClass 'fa-star-o'
      $(this).children().addClass 'fa-star'
      return
    mouseleave: (e) ->
      $(this).children().removeClass 'fa-star'
      $(this).children().addClass 'fa-star-o'
      return
    click: (e) ->
      $(this).unbind 'mouseenter mouseleave'
      $('#1-star, #2-star, #3-star, #5-star').children().removeClass 'fa-star'
      $('#1-star, #2-star, #3-star, #5-star').children().addClass 'fa-star-o'
      $('#rate').val 4
      return
  $('#5-star').bind
    mouseenter: (e) ->
      $(this).children().removeClass 'fa-star-o'
      $(this).children().addClass 'fa-star'
      return
    mouseleave: (e) ->
      $(this).children().removeClass 'fa-star'
      $(this).children().addClass 'fa-star-o'
      return
    click: (e) ->
      $(this).unbind 'mouseenter mouseleave'
      $('#1-star, #2-star, #4-star, #3-star').children().removeClass 'fa-star'
      $('#1-star, #2-star, #4-star, #3-star').children().addClass 'fa-star-o'
      $('#rate').val 5
      return
  $('#refresh').click ->
    location.reload true
    return
  return
