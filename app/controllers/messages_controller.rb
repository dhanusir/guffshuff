class MessagesController < ApplicationController
  before_action :require_user

  def create
    msg = current_user.messages.build(message_params)
    ActionCable.server.broadcast 'chatroom_channel', message: render_message(msg) if msg.save
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def render_message(msg)
    render(partial: 'message', locals: { message: msg })
  end
end
