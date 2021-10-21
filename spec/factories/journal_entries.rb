FactoryBot.define do
  factory :journal_entry do
    user
    date { Faker::Date.in_date_period }
    description { Faker::TvShows::Seinfeld.quote }
  end
end
