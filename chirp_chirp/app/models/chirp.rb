class Chirp < ActiveRecord::Base
	belongs_to :user

	validates :chirp,
		presence: true,
		length: {:maximum => 255}

end
