jQuery ->
	fixHelper = (e, ui) ->
		ui.children().each ->
			$(this).width $(this).width()
		ui
	
	$('.sortable tbody').sortable(
		axis: 'y'
		helper: fixHelper
		cursor: 'pointer'
		update: ->
			console.log $(this).data('update-url')
			console.log $(this).sortable('serialize')
			$.post($(this).data('update-url'), $(this).sortable('serialize'))
	).disableSelection();
