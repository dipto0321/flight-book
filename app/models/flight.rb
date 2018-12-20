class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arival_airport, class_name: 'Airport'
  has_many :bookings


  def self.search_flight(departure_airport, arival_airport)
    Flight.where("departure_airport_id=? AND arival_airport_id= ?", departure_airport, arival_airport)
  end
end
