class BookingsController < ApplicationController
  before_action :set_puzzle, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.puzzle = @puzzle
    if @booking.save
      redirect_to puzzle_path(@ouzzle)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:puzzle_id)
  end

  def set_puzzle
    @puzzle = Puzzle.find(:puzzle_id)
  end
end
