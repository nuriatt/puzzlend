class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :puzzle

  validates :start_date, presence: true
  validates :end_date, presence: true

  def self.user_bookings(user)
    where('user_id = ?', user)
  end


  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
