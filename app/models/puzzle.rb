class Puzzle < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :user

  has_one_attached :photo

  def free?
    price.zero?
  end

end
