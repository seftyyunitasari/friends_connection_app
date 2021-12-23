class Post < ApplicationRecord
  belongs_to :user
  validates :description, length: {maximum: 255}
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user
end
