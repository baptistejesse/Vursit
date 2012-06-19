# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#slide').hide()
  $('#slider').click ->
   $('#slide').toggle("slow")

$(".container-fluid").fitVids()

$('#main').masonry
    #options
    itemSelector : '#vidds',
    columnWidth : 340


$("#viddy").embedly
	  maxWidth: 250
	  wmode: "transparent"
	  method: "after"
	  key: "122028ec065711e1936a4040d3dc5c07"
