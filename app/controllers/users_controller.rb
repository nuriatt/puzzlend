class UsersController < ApplicationController

  def my_puzzles
    @puzzles = current_user.puzzles
  end

  def my_bookings
    @bookings = current_user.bookings
  end

end
