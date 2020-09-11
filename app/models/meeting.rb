class Meeting < ApplicationRecord
  belongs_to :creator, foreign_key: 'user_id', class_name: :User
  has_many :members
  has_many :users, through: :members

  validates :start_time, :end_time, :presence => true
  validate :start_time_can_not_be_in_the_past
  validate :end_time_should_be_after_start_time
  attr_accessor :user_ids


  def start_time_can_not_be_in_the_past
    if self.start_time < Time.now
      errors.add(:start_time, "can't be in the past")
    end
  end

  def end_time_should_be_after_start_time
    if self.end_time < self.start_time
      errors.add(:end_time, 'should be after meeting start time')
    end
  end

  def start_date_format
    self.start_time.strftime("%-d/%-m/%y: %H:%M")
  end

  def end_date_format
    self.end_time.strftime("%-d/%-m/%y: %H:%M")
  end

end
