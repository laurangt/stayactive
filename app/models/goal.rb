class Goal < ApplicationRecord
  belongs_to :project
  has_many :logs, dependent: :destroy

  validates :description, presence: true
  validates :end_date, presence: true
end
