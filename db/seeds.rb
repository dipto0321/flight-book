30.times do
  name = "#{Faker::Address.country} International Airport"
  code = name.upcase[0...3]
  Airport.create!(name: name, code: code)
end

airports = Airport.all
total_airports = airports.size

total_airports.times do
  departure_airport = airports.sample
  airports_except_dep = airports - [departure_airport]
  itter_times = rand(5..10)
  itter_times.times do
    arival_airport = airports_except_dep.sample
    start_date = Time.now + rand(1..30).days + rand(1..24).hours + rand(1..60).minutes
    duration = rand(3300)
    Flight.create!(departure_airport_id: departure_airport.id, arival_airport_id: arival_airport.id, start:start_date, duration: duration)
  end
end
