class Tournament < ApplicationRecord

	belongs_to :user
	belongs_to :title

	attachment :image
	
end
