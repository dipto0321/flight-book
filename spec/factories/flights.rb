FactoryBot.define do
  factory :flight do
    from_airport { 1 }
    to_airport { 1 }
    start { "2018-12-18 08:50:51" }
    duration { 1 }
  end
end
