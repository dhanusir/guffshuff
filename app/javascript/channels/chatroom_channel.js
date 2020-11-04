import consumer from "./consumer"

var scroll_bottom = function() {
  if ($('#chat-body').length > 0) {
    $('#chat-body').scrollTop($('#chat-body')[0].scrollHeight);
  }
}

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the chat room!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("Disconnected to the chat room!");
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    $('#chat-body').append(data.message);
    $('#message_body').val('');
    scroll_bottom();
  }
});
