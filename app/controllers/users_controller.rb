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
  		redirect_to user_path(@user)
  	end
  end

  def update
  	if params[:user][:password].blank?
  		params[:user].delete("password")
  		params[:user].delete("password_confirmation")
  	end
  	@user = User.find(current_user.id)
  	if @user.update(user_params)
  		sign_in(@user, :bypass => true)
  		flash[:notice] = "ユーザー情報を更新しました"
  		redirect_to user_path(current_user.id)
  	else
  		flash[:notice] = "ユーザー情報の入力が正しくありません"
  		render "edit"
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:name, :icon, :email, :password, :password_confirmation)
  end
end