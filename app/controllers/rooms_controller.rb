class RoomsController < ApplicationController
  def show
  	@room = Room.find(params[:id])
  	@messages = @room.messages.page(params[:page]).per(10).order(id: "DESC")
    @tournament = Tournament.find_by(id: @room.tournament.id)
    @open_room = @tournament.rooms.find_by(is_opened: true)
  end

  def create
  	@room = Room.new(room_params)
  	@room.save
  	member = Member.new
  	member.room_id = @room.id
  	member.user_id = current_user.id
  	member.tournament_id = @room.tournament_id
  	member.save
  	redirect_to room_path(@room.id)
  end

  private

  def room_params
    params.require(:room).permit(:tournament_id)
  end
end
