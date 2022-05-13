class BookingsController < ApplicationController
  before_action :set_puzzle, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.puzzle = @puzzle
    @booking.user = current_user
    if @booking.save
      redirect_to puzzle_path(@puzzle)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:puzzle_id, :start_date, :end_date)
  end

  def set_puzzle
    @puzzle = Puzzle.find(params[:puzzle_id])
  end
end
