class BookingsController < ApplicationController
  before_action :set_puzzle, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  # UPDATE - WIP

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to my_bookings_path, notice: 'Booking updated!'
    else
      render :edit
    end
  end

  # CREATE

  def create
    @booking = Booking.new(booking_params)
    @booking.puzzle = @puzzle
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_path, notice: 'Booking confirmed!'
    else
      render :new
    end
  end

  # DELETE

  def destroy
    booking = Booking.find(params[:id])
    booking.destroy
    redirect_to my_bookings_path, alert: 'Booking deleted!'
  end

  private

  def booking_params
    params.require(:booking).permit(:puzzle_id, :start_date, :end_date)
  end

  def set_puzzle
    @puzzle = Puzzle.find(params[:puzzle_id])
  end
end
