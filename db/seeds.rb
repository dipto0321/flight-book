30.times do
  name = "#{Faker::Address.country} International Airport"
  code = name.upcase[0...3]
  Airport.create!(name: name, code: code)
end
