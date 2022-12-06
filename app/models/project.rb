class Project < ApplicationRecord
  belongs_to :user
  has_many :goals, dependent: :destroy
  has_many :logs, through: :goals

  validates :title, presence: true
  validates :description, presence: true

  def done?
    return false if goals.empty?
    return true if goals.all?(&:status)

    return false
  end
end
