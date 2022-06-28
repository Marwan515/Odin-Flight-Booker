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
      PassengerMailer.with(booking: @booking.id).flight_confirmation.deliver_later
      flash.notice = "Booking Confirmed"
      redirect_to booking_url(@booking), notice: "Booking Confirmed"
    else
      flash.alert = "Error"
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end
