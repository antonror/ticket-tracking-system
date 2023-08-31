require 'faker/default/artist'

FactoryBot.define do
  factory :performer do
    trait :live do
      name { Faker::Artist.name + " live"}
    end

    trait :recorded do
      name { Faker::Artist.name + " recorded"}
    end
  end
end
