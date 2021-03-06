# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
	$(document).on 'change', '.create-assignment', ->
		form = $(this).closest('form')[0]
		Rails.fire(form, 'submit')
	$(document).on 'ajax:success', '.assignment-select', ->
		$(this).find('option:selected').remove()
	$(document).on 'ajax:success', '.remove-assignment', ->
		$(this).find('.assignment').remove()