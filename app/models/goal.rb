class Goal < ApplicationRecord
  belongs_to :project
  has_many :logs, dependent: :destroy
  has_one :user, through: :project

  validates :description, presence: true
  validates :end_date, presence: true
  def toggle_status
    update_attribute(:status, !status)
  end

  def self.getMetaValue()
  end
end
