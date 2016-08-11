---
---

$ ->

	# bootstrap lightbox
	$(document).delegate '*[data-toggle="lightbox"]', 'click', (event) ->
		event.preventDefault()
		$(this).ekkoLightbox()
		return

	# force footer to bottom
	$(document).ready ->
		$footerElem = $('#footer-main')
		contentHeight = $(window).height()
		footerHeight = $footerElem.innerHeight()
		footerTop = $footerElem.position().top + footerHeight
		$footerElem.css 'margin-top', contentHeight - footerTop + 'px' if footerTop < contentHeight
