document.addEventListener 'turbolinks:load', ->
path = window.location.pathname.split('/')
room_id = path[path.length - 1]
App.room = App.cable.subscriptions.create { channel: "RoomChannel", room_id: room_id },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  speak: (message) ->
    @perform 'speak', message: message

  received: (data) ->
    $('#messages').append data['message'].render
    changeClass(data)
    return


 $(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13
  	App.room.speak event.target.value

  	event.target.value = ''
  	event.preventDefault()

changeClass = (data)->
  current = $('.current_user').val()
  if String(data.message.user) != $('.current_user').val()
    lastContent = $('.mymessage:last')
    lastContent.find(".mymessage").removeClass('mymessage').addClass('message')
    lastContent.find(".mychat-face").removeClass('mychat-face').addClass('chat-face')
    lastContent.find(".mychat-name").removeClass('mychat-name').addClass('chat-name')
    lastContent.find(".mychat-area").removeClass('mychat-area').addClass('chat-area')
    lastContent.find(".mychat-hukidashi").removeClass('mychat-hukidashi').addClass('chat-hukidashi')
  return