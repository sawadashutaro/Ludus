class RoomChannel < ApplicationCable::Channel

  def subscribed
    stream_from "room_channel_#{params['room_id']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	p params
  	p data
  	#ActionCable.server.broadcast 'room_channel', message: data['message']
  	Message.create!(chat: data['message'], user_id: current_user.id, room_id: params['room_id'])
  end
end
