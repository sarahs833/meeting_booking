class User < ApplicationRecord
  has_one_attached :image
  has_many :members
  has_many :meetings
  has_many :booked_meetings, through: :members, source: 'meeting'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  scope :not_include_self, -> (current_user){ where.not(id: current_user.id)}

end
