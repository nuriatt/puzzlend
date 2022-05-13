class BookingsController < ApplicationController
  before_action :set_puzzle, only: [:new, :create]

  def index
    @bookings = Booking.user_bookings(current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.puzzle = @puzzle
    @booking.user = current_user
    if @booking.save
      redirect_to puzzle_path(@puzzle), notice: 'Booking confirmed!'
    else
      render :new
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to bookings_path, alert: 'Booking deleted!'
  end

  private

  def booking_params
    params.require(:booking).permit(:puzzle_id, :start_date, :end_date)
  end

  def set_puzzle
    @puzzle = Puzzle.find(params[:puzzle_id])
  end
end
