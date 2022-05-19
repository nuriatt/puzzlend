class UsersController < ApplicationController

  def my_puzzles
    @puzzles = current_user.puzzles
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking updated!'
    else
      render :edit
    end
  end

end
