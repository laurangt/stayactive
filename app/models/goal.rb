class Goal < ApplicationRecord
  belongs_to :project
  has_many :logs, dependent: :destroy
end
