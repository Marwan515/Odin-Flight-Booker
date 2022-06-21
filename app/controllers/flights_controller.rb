class FlightsController < ApplicationController

  def index
    @available_flights = []
    @flight = Flight.all
    @airport_names = Airport.all.map {|a| [a.airport_code, a.id] }
    @dates = @flight.map { |f| f.flight_day  }.uniq
    @passen = [1, 2, 3, 4]
    if params[:depart].present? && params[:arrive].present? && params[:passengers_count].present? && params[:date].present?
      @available_flights = @flight.where(departure_airport_id: params[:depart], arrival_airport_id: params[:arrive], flight_day: params[:date] )
    end
  end

  def show
    
  end

  def new

  end

  private
    def set_flight
      @flight = Flight.find(params[:id])
    end
end
