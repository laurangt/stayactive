class Membership < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :posts, dependent: :destroy
  validates :group_id, uniqueness: true
  validates :user_id, uniqueness: { scope: :group_id }
end
