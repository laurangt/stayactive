class Group < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :posts, through: :memberships
  has_one_attached :photo
end
