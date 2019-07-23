class Tournament < ApplicationRecord
	after_validation :geocode

	validates :name, presence: true
	validates :date, presence: true
	validates :maximum, presence: true
	validates :title, presence: true

	belongs_to :user
	belongs_to :title

	has_many :entries, dependent: :destroy
	has_many :rooms
	has_many :members
	has_many :goods

	attachment :image

	private

	def geocode
		if self.address == ""
			return
		else
			uri = URI.escape("https://maps.googleapis.com/maps/api/geocode/json?address="+self.address.gsub(" ", "")+"&key=AIzaSyCE-ffQx828zkd1oHpOF9z5QZaiv38zeH8")
			res = HTTP.get(uri).to_s
			response = JSON.parse(res)
			self.latitude = response["results"][0]["geometry"]["location"]["lat"]
			self.longitude = response["results"][0]["geometry"]["location"]["lng"]
		end
	end
end
