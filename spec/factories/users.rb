# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    intentions { Faker::Creature::Dog.sound }
  end
end
