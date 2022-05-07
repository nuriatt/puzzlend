class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :puzzles
end
