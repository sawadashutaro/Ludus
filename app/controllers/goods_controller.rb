class GoodsController < ApplicationController
	def create
		@tournament = Tournament.find(params[:tournament_id])
		good = current_user.goods.new(tournament_id: @tournament.id)
		good.save
	end

	def destroy
		@tournament = Tournament.find(params[:tournament_id])
		good = current_user.goods.find_by(tournament_id: @tournament.id)
		good.destroy
	end
end
