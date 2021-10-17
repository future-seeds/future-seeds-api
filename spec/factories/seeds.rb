FactoryBot.define do
  factory :seed do
    name { Faker::Food.vegetables }
    planting_depth {"1/#{Faker::Number.within(range: 2..8)} in"  }
    days_to_germinate { "#{Faker::Number.within(range: 1..10)}-#{Faker::Number.within(range: 11..20)} days" }
    time_to_harvest { "#{Faker::Number.within(range: 30..50)}-#{Faker::Number.within(range: 60..90)} days" }
    date_planted { Faker::Date.in_date_period }
    sun_exposure { ["Full sun", "Part shade", "Full shade", "Unknown"].sample }
    expected_plant_height { "#{Faker::Number.within(range: 1..10)}-#{Faker::Number.within(range: 11..35)} in" }
    notes { Faker::Movies::HarryPotter.quote }
  end
end
