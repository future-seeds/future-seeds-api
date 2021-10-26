# frozen_string_literal: true

class Mutations::CreateSeed < ::Mutations::BaseMutation
  argument :id, ID, required: false
  argument :name, String, required: false
  argument :planting_depth, String, required: false
  argument :days_to_germinate, String, required: false
  argument :time_to_harvest, String, required: false
  argument :date_planted, String, required: false
  argument :sun_exposure, Types::SunExposure, required: false
  argument :expected_plant_height, String, required: false
  argument :notes, String, required: false
  argument :user_id, ID, required: false

  type Types::SeedType
  # type Types::SunExposure
  field :seed, Types::SeedType, null: false
  # field :sun_exposure, Types::SunExposure, null: false
  field :errors, [String], null: false

  def resolve(name:,
              planting_depth:,
              days_to_germinate:,
              time_to_harvest:,
              date_planted:,
              expected_plant_height:,
              notes:,
              user_id:)
    seed = Seed.create!(name: name,
                        planting_depth: planting_depth,
                        days_to_germinate: days_to_germinate,
                        time_to_harvest: time_to_harvest,
                        date_planted: date_planted,
                        # sun_exposure: sun_exposure,
                        expected_plant_height: expected_plant_height,
                        notes: notes,
                        user_id: user_id)
    if seed.save
      seed
    else
      {
        seed: nil,
        errors: seed.errors.full_messages
      }
    end
  end
end
