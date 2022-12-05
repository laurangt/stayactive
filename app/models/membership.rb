class Membership < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :hearts, dependent: :destroy
  validates :user_id, uniqueness: { scope: :group_id }
end
