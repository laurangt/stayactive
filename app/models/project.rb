class Project < ApplicationRecord
  belongs_to :user
  has_many :goals, dependent: :destroy
  has_many :logs, through: :goals
end
