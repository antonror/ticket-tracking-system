require 'faker/default/funny_name'

FactoryBot.define do
  factory :location do
    trait :outdoors do
      name { Faker::FunnyName.two_word_name + " outdoors" }
    end

    trait :indoors do
      name { Faker::FunnyName.two_word_name + " indoors" }
    end

    trait :abroad do
      name { Faker::FunnyName.two_word_name + " abroad" }
    end
  end
end
