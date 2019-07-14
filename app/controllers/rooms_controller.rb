class RoomsController < ApplicationController
  def show
  	@room = Room.find(params[:id])
  	@messages = @room.messages
  end

  def create
  	@room = Room.new
  	@room.save
  	member = Member.new
  	member.room_id = @room.id
  	member.user_id = current_user.id
  	member.tournament_id = @room.tournament_id
  	member.save
  	redirect_to room_path(@room.id)
  end
end
