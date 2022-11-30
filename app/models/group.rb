class Group < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :posts, through: :memberships
  has_many :comments, through: :memberships
  has_one_attached :photo
  has_many :posts, through: :memberships

  # validates :
end
