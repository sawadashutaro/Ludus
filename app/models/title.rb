class Title < ApplicationRecord

	has_many :tournaments, dependent: :destroy

end
