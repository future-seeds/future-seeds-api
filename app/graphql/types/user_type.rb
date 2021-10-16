module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :intentions, String, null: false
    field :seeds, [SeedType], null: true do
      field :id, ID, null: false
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
end
