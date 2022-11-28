class Post < ApplicationRecord
  belongs_to :membership
  has_many :comments, dependent: :destroy
end
