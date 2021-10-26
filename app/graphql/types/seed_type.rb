# frozen_string_literal: true

module Types
  class SeedType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :planting_depth, String, null: true
    field :days_to_germinate, String, null: true
    field :time_to_harvest, String, null: true
    field :date_planted, String, null: true
    field :sun_exposure, Types::SunExposure, null: true
    field :expected_plant_height, String, null: true
    field :notes, String, null: true
    field :user_id, ID, null: true
    # field :user, UserType, null: false
  end
end
