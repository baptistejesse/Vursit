
$ ->
  $('#slide').hide()
  $('#slider').click ->
   $('#slide').toggle("slow")

$(".container-fluid").fitVids()

$('#main').masonry
    #options
    itemSelector : '#vidds'
    columnWidth : 600
    
$("a").embedly
	maxWidth: 350
	wmode: "transparent"
    method: "after"
	key: "122028ec065711e1936a4040d3dc5c07"	

