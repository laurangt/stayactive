class Log < ApplicationRecord
  belongs_to :goal
  validates :content, presence: true

  has_one_attached :photo
end
