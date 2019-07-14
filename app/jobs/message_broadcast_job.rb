class MessageBroadcastJob < ApplicationJob


  def perform(message)
  	p "perform:"
  	p message
  	ActionCable.server.broadcast "room_channel_#{message.room_id}", message: render_message(message)
  end

  private

  def render_message(message)
  	p "render_message"
  	p message
  	ApplicationController.renderer.render partial: 'messages/message', locals: { message: message}
  end
end
