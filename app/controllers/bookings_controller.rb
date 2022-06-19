class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @bflight = Flight.find(params[:flight])
    @passeng = params[:passengers_count].to_i
    @passeng.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash.notice = "Booking Confirmed"
      redirect_to @booking
    else
      flash.alert = "Not Booked"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
end
