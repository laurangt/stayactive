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

  def done_percentage
    self.goals.where(status: true).count.to_f/self.goals.count.to_f
  end
end
