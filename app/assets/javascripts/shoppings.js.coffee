# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready (e) ->
  $("FORM").nestedFields()

  target = ''

  register = ->
    $('[data-quick-category="true"]').bind "ajax:success", (event, data, status, xhr) ->
      console.log "success"
      return

    $('[data-quick-category="true"]').bind "ajax:beforeSend", (event, data, status, xhr) ->
      console.log "before"
      return

    $('[data-quick-category="true"]').bind "ajax:complete", (event, data, status, xhr) ->
      # console.log data.responseText
      if(data.responseText.indexOf("data-parent='1'") > 0)
        $("#Parent").append(data.responseText)
      $("[name=category_id]").each (index, element) ->
        $(element).append(data.responseText)
      $('#myModal').modal('hide')
      return

  register_payee = ->
    $('[data-quick-payee="true"]').bind "ajax:success", (event, data, status, xhr) ->
      console.log "success"
      return

    $('[data-quick-payee="true"]').bind "ajax:beforeSend", (event, data, status, xhr) ->
      console.log "before"
      return

    $('[data-quick-payee="true"]').bind "ajax:complete", (event, data, status, xhr) ->
      console.log data.responseText
      $("[name=payee_id]").each (index, element) ->
        $(element).append(data.responseText)
      $("[aria-hidden='true']").trigger('click')
      return

  register_payee()
  register()
  return
