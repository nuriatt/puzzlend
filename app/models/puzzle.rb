class Puzzle < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user

  has_one_attached :photo

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end

  def free?
    price.zero?
  end

  def avg_stars
    count = 0.00
    reviews.each { |review| count += review.stars }
    (count / reviews.size).round(2)
  end

  include PgSearch::Model
  pg_search_scope :search_by_puzzle_name,
                  against: {
                    name: 'A',
                    description: 'B',
                    pieces: 'C'
                  },
                  using: {
                    tsearch: { prefix: true } # <-- words will not need to be complete
                  }
end
