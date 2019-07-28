class Room < ApplicationRecord
	has_many :messages
	has_many :members

	belongs_to :tournament
end
