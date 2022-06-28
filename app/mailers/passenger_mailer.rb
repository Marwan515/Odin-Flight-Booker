class PassengerMailer < ApplicationMailer
  default from: "Oding@flights.com"

  def flight_confirmation
    @booked = Booking.find(params[:booking])
    
    mail(to: @booked.passengers.pluck(:email), subject: "Flight Confirmation Mail" )
  end
end
