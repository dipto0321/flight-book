class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: 'departure_airport_id', class_name: 'Flight'
  has_many :ariving_flights, foreign_key: 'arival_airport_id', class_name: 'Flight'

  validates :name, :code, presence: true
end
