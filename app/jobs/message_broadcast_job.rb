class MessageBroadcastJob < ApplicationJob


  def perform(message)
  	p "perform:"
  	p message
    a = {}
    a[:render] = render_message(message)
    a[:user] = message.user_id
  	ActionCable.server.broadcast "room_channel_#{message.room_id}", message: a
  end

  private

  def render_message(message)
  	p "render_message"
  	p message
  	ApplicationController.renderer.render partial: 'messages/message', locals: { message: message}
  end
end
