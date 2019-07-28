class EntriesController < ApplicationController

	def create
		@tournament = Tournament.find(params[:tournament_id])
		entry = current_user.entries.new(tournament_id: @tournament.id)
		entry.save
	end

	def destroy
		@tournament = Tournament.find(params[:tournament_id])
		entry = current_user.entries.find_by(tournament_id: @tournament.id)
		entry.destroy
	end
end
