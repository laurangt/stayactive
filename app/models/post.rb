class Post < ApplicationRecord
  belongs_to :membership
  has_many :comments, dependent: :destroy
  has_many :hearts, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 200 }

  has_one_attached :photo
end
