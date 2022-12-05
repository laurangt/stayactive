class Heart < ApplicationRecord
  belongs_to :post
  belongs_to :membership
  has_one :user, through: :membership
  validates :membership_id, uniqueness: { scope: :post_id }
end
