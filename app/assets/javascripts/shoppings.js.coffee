# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready (e) ->
  $("FORM").nestedFields()

  target = ''

  register = ->
    $('[data-kpopform="true"]').bind "ajax:success", (event, data, status, xhr) ->
      console.log "success"
      return

    $('[data-kpopform="true"]').bind "ajax:beforeSend", (event, data, status, xhr) ->
      console.log "before"
      return

    $('[data-kpopform="true"]').bind "ajax:complete", (event, data, status, xhr) ->
      $('[data-kselect="true"]').each ->
      	console.log data.responseText
      return

  register()
  return
