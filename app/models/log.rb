class Log < ApplicationRecord
  belongs_to :goal
  has_one :project, through: :goal
  has_one :user, through: :goal
  validates :content, presence: true

  has_one_attached :photo
end
