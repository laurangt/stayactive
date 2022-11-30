class Membership < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :group_id, uniqueness: true
  validates :user_id, uniqueness: { scope: :group_id }
end
