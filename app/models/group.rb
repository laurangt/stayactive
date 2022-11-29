class Group < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_one_attached :photo
  has_many :posts, through: :memberships
end
