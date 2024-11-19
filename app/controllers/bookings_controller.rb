class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    if
  end

  private

  def params_booking
    params.require(:booking).permit(:address, :start_date, :end_date)
  end
end
