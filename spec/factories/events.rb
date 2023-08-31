require 'faker/default/hipster'

FactoryBot.define do
  factory :event do
    trait :live_outdoor do
      name { Faker::Hipster.name + " LA"}
    end

    trait :recorded_indoor do
      name { Faker::Hipster.name + " RI"}
    end

    location
  end
end
