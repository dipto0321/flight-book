class FlightsController < ApplicationController
  def index
    @flight = Flight.new
    @airports = Airport.all
    @flights = params.key?(:flight) ? Flight.search_flight(flight_params[:departure_airport], flight_params[:arival_airport]) : []
  end

  def new
  end

  def edit
  end

  def show
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport, :arival_airport, :start, :duration)
  end
end
