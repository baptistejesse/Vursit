
$ ->
  $('#slide').hide()
  $('#slider').click ->
   $('#slide').show("slow")
   

$(".container-fluid").fitVids()

$('#main').masonry
    #options
    itemSelector : '#vidds'
    columnWidth : 400
