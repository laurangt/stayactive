class Comment < ApplicationRecord
  belongs_to :membership
  belongs_to :post

  validates :content, presence: true
  validates :post_id, presence: true
end
