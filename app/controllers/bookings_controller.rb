class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @buddy = Buddy.find(params[:buddy_id])
  end

  def create
    @booking = Booking.new(params_booking)
    # #@buddy = Buddy.find(params[:buddy_id])
    @booking.buddy_id = params[:buddy_id]
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path(@booking), notice: 'Buddy was successfully booked.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date, :address)
  end
end
