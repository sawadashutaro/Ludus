class Tournament < ApplicationRecord

	belongs_to :user
	belongs_to :title

	has_many :entries, dependent: :destroy

	attachment :image

	# after_validation :geocode

	# private
	# def geocode
	# 	uri = URI.escape()
	
end
