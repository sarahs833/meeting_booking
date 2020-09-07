class User < ApplicationRecord
  has_one_attached :image
  has_many :members
  has_many :meetings
  #has_many :meetings, through: :members
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
