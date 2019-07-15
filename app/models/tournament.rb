class Tournament < ApplicationRecord

	belongs_to :user
	belongs_to :title

	has_many :entries, dependent: :destroy
	has_many :rooms
	has_many :members
	has_many :goods

	attachment :image

	# after_validation :geocode

	# private
	# def geocode
	# 	uri = URI.escape()
	
end
