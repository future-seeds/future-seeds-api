# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::CreateSeed, type: :request do
  it 'creates a seed' do
    Seed.destroy_all
    JournalEntry.destroy_all
    User.destroy_all

    @user1 = User.create!(first_name: 'Brett',
                          last_name: 'Toensing',
                          city: 'Atlanta',
                          state: 'GA',
                          intentions: 'Not cut trees')

    post '/graphql', params: { query: mutation }

    expect(response).to be_successful

    seed = Seed.last
    expect(seed.name).to eq('Willow Tree')
    expect(seed.planting_depth).to eq('12-18 in')
    expect(seed.days_to_germinate).to eq('15-20 days')
    expect(seed.time_to_harvest).to eq('N/A')
    expect(seed.date_planted).to eq('2021-10-25')
    # expect(seed.sun_exposure).to eq('Full sun')
    expect(seed.expected_plant_height).to eq('33 ft')
    expect(seed.notes).to eq("I bring the shade at the river's edge.")
  end

  def mutation
    <<~GQL
      mutation{
        createSeed(
            userId: "#{@user1.id}"
            name: "Willow Tree"
            plantingDepth: "12-18 in"
            daysToGerminate: "15-20 days"
            timeToHarvest: "N/A"
            datePlanted: "2021-10-25"
            expectedPlantHeight: "33 ft"
            notes: "I bring the shade at the river's edge."
          )
        {
          userId
          name
          plantingDepth
          daysToGerminate
          timeToHarvest
          datePlanted
          expectedPlantHeight
          notes
        }
      }
    GQL
  end
end
