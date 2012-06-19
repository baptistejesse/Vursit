
$ ->
  $('#slide').hide()
  $('#slider').click ->
   $('#slide').toggle("slow")

$(".container-fluid").fitVids()

$('#main').masonry
    #options
    itemSelector : '#vidds'
    columnWidth : 340


$("#viddy").embedly
	  maxWidth: 250
	  wmode: "transparent"
	  method: "after"
	  key: "122028ec065711e1936a4040d3dc5c07"


$("#indy2").embedly
		maxWidth: 400
		wmode: "transparent"
		method: "after"
		key: "122028ec065711e1936a4040d3dc5c07"


 $("#indy1").embedly
	  maxWidth: 400
	  wmode: "transparent"
	  method: "after"
	  key: "122028ec065711e1936a4040d3dc5c07"