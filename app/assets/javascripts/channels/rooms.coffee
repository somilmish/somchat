# Check if there is a #messages block on the page and, if yes, subscribe to the channel while providing the room’s id

jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')
  if $('#messages').length > 0

    App.global_chat = App.cable.subscriptions.create {
      channel: "ChatRoomsChannel"
      chat_room_id: messages.data('chat-room-id')
    },
      connected: ->
# Called when the subscription is ready for use on the server

      disconnected: ->
# Called when the subscription has been terminated by the server

      received: (data) ->
# Data received

      send_message: (message, chat_room_id) ->
        @perform 'send_message', message: message, chat_room_id: chat_room_id

# When the form is submitted, take the message’s body, check that its length is at least two and then call the send_message function to broadcast the new message to all visitors of the chat room. Next, clear the textarea and prevent form submission.
$('#new_message').submit (e) ->
  $this = $(this)
  textarea = $this.find('#message_body')
  if $.trim(textarea.val()).length > 1
    App.global_chat.send_message textarea.val(), messages.data('chat-room-id')
    textarea.val('')
  e.preventDefault()
  return false