class ApplicationController < ActionController::Base
	before_action :set_search

	def set_search
		@search = Tournament.ransack(params[:q])
		@search_tournament = @search.result.includes(:title).page(params[:page]).per(5).order(id: "DESC")
		require "date"
		@time = DateTime.now
	end
end
