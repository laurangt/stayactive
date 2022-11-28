class Comment < ApplicationRecord
  belongs_to :membership
  belongs_to :post
end
