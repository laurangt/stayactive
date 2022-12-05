class Heart < ApplicationRecord
  belongs_to :post
  belongs_to :membership
  has_one :user, through: :membership
end
