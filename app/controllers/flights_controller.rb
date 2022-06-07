class FlightsController < ApplicationController
  before_action :set_flight

  def index
    @flight = Flight.all
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
