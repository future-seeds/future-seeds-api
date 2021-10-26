# frozen_string_literal: true

FactoryBot.define do
  factory :journal_entry do
    user
    date { Faker::Date.in_date_period }
    description { Faker::Quote.yoda }
  end
end
