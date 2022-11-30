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
  has_one_attached :photo

end
