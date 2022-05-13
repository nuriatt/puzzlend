class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :puzzle

  validates :start_date, presence: true
  validates :end_date, presence: true

  def self.user_bookings(user)
    where('user_id = ?', user)
  end
end
