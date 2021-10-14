module Types
  class SeedType < Types::BaseObject
    field :name, String, null: false
    field :planting_depth, String, null: false
    field :days_to_germinate, String, null: false
    field :time_to_harvest, String, null: false
    field :date_planted, String, null: false
    field :sun_exposure, Boolean, null: false
    field :expected_plant_height, String, null: false
    field :notes, String, null: false
  end
end
