# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  target = ''

  register = ->
    $("form[data-remote=\"true\"], a[data-remote=\"true\"]").bind "ajax:success", (event, data, status, xhr) ->
      return

    $("form[data-remote=\"true\"], a[data-remote=\"true\"]").bind "ajax:beforeSend", (event, data, status, xhr) ->
      target = $(this).data("source")
      console.log "--------Target----------" + target
      return

    $("form[data-remote=\"true\"], a[data-remote=\"true\"]").bind "ajax:complete", (event, data, status, xhr) ->
      console.log(data.responseText)
      $('[data-target=' + target + ']').html(data.responseText)
      console.log $('[data-target=' + target + ']').html()
      register()
      return

  register()
  return
