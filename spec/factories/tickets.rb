require 'faker/default/id_number'

FactoryBot.define do
  factory :ticket do
    price { 3.99 }
    seating_id { Faker::IDNumber.rand_in_range(0, 999)}
  end
end
