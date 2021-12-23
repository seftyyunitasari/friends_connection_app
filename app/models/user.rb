class User < ApplicationRecord
	before_validation {email.downcase!}
	has_secure_password
	validates :name, presence: true, length: {maximum: 30}
	validates :email, presence: true, uniqueness: true
	validates :password, length: {minimum: 6}
	has_many :likes, dependent: :destroy
end
