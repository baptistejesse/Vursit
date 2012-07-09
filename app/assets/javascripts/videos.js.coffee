
$ ->
  $('#slide').hide()
  $('#slider').click ->
   $('#slide').toggle("slow")

$(".container-fluid").fitVids()

$('#main').masonry
    #options
    itemSelector : '#vidds'
    columnWidth : 300

$('')