class Title < ApplicationRecord

	has_many :titles, dependent: :destroy
	
end
