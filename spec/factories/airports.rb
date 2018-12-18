FactoryBot.define do
  factory :airport do
    name { "#{Faker::Address.country}" }
    code { "#{name.upcase[0...3]}" }
  end
end
