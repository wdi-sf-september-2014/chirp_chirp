class User < ActiveRecord::Base
	has_secure_password
	has_many :chirps

	validates :username,
		presence: true,
		length: {:maximum => 10},
		uniqueness: true

	validates :password,
		presence: true,
		length: {:maximum => 10}
end
