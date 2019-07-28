class HomesController < ApplicationController
  def top
  	@tournaments = Tournament.where(is_completed: true).limit(10).order(:updated_time)
  end
end
