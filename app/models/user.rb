class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
  has_many :posts, through: :membership
  has_many :comments, through: :memberships
  has_many :projects, dependent: :destroy
  has_many :goals, through: :projects
  has_many :hearts, through: :memberships
  has_one_attached :photo

  validates :email, presence: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  }
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true
  validates :bio, presence: true
end
