class FlightsController < ApplicationController
  def index
    @flight = Flight.new
    @airports = Airport.all
    @flights = params.key?(:search) ? Flight.search_flight(params[:search][:departure_airport], params[:search][:arival_airport]) : []
  end
  
end
