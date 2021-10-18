FactoryBot.define do
  factory :journal_entry do
    date { Faker::Date.in_date_period }
    description { Faker::TvShows::Seinfeld.quote }
  end
end
