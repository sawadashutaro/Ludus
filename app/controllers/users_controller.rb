class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@total_good = 0
  	@user.tournaments.each do |tournament|
  		@total_good += Good.where(tournament_id: tournament.id).count
  	end
  end

  def edit
  	@user = User.find(params[:id])
  	if current_user != @user
  		redirect_to user_path
  	end
  end

  def update
  	@user = User.find(current_user.id)
  	@user.update(user_params)
  end

  private

  def user_params
  	params.require(:user).permit(:name, :icon)
  end
end