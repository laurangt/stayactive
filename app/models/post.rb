class Post < ApplicationRecord
  belongs_to :membership
  has_many :comments, dependent: :destroy
  has_many :hearts, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 200 }

  has_one_attached :photo

  def liked?(user)
    hearts.any? do |heart|
      heart.user == user
    end
  end

  def heart_by_user(user)
    hearts.find do |heart|
      heart.user == user
    end
  end
end
