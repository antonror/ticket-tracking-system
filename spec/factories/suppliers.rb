require 'faker/default/business'

FactoryBot.define do
  factory :supplier do
    trait :national do
      name { Faker::Business.name + " national"}
    end

    trait :international do
      name { Faker::Business.name + " international"}
    end
  end
end
