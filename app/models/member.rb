class Member < ApplicationRecord
	belongs_to :user
	belongs_to :room
	belongs_to :tournament
end
