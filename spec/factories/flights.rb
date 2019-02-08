FactoryBot.define do
  factory :flight do
    departure_airport { 1 }
    arival_airport { 1 }
    start { "2018-12-18 08:50:51" }
    duration { 1 }
  end
end
