# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display seeds' do
    it 'can query all seeds' do
      JournalEntry.destroy_all
      Seed.destroy_all
      User.destroy_all
      user1 = create(:user, first_name: 'Brett',
                            last_name: 'Tan',
                            city: 'San Diego',
                            state: 'CA',
                            intentions: 'To control the food supply')
      seed1 = create(:seed, name: 'Eggplant',
                            planting_depth: '1-2 in',
                            days_to_germinate: '5-7 days',
                            time_to_harvest: '45-60 days',
                            date_planted: '2021-11-23',
                            expected_plant_height: '45-60 in',
                            notes: 'purple',
                            sun_exposure: 'Full sun',
                            user: user1)
      create_list(:seed, 4)

      result = FutureSeedsApiSchema.execute(all_seeds_query).as_json
      expect(result['data']['seeds'].count).to eq(5)
      expect(result['data']['seeds'].first['name']).to eq(seed1.name)
      expect(result['data']['seeds'].first['plantingDepth']).to eq(seed1.planting_depth)
      expect(result['data']['seeds'].first['daysToGerminate']).to eq(seed1.days_to_germinate)
      expect(result['data']['seeds'].first['timeToHarvest']).to eq(seed1.time_to_harvest)
      expect(result['data']['seeds'].first['datePlanted']).to eq(seed1.date_planted)
      expect(result['data']['seeds'].first['expectedPlantHeight']).to eq(seed1.expected_plant_height)
      expect(result['data']['seeds'].first['notes']).to eq(seed1.notes)
      expect(result['data']['seeds'].first['userId']).to eq(user1.id.to_s)
      expect(result['data']['seeds'].first['sunExposure']).to eq('FULLSUN')
    end

    def all_seeds_query
      <<~GQL
        {
          seeds{
            name
            plantingDepth
            daysToGerminate
            timeToHarvest
            datePlanted
            expectedPlantHeight
            notes
            userId
            sunExposure
          }
        }
      GQL
    end
  end

  describe 'display a seed' do
    it 'can query one seed' do
      user1 = create(:user, first_name: 'Brett',
                            last_name: 'Tan',
                            city: 'San Diego',
                            state: 'CA',
                            intentions: 'To control the food supply')
      seed1 = create(:seed, id: 1, name: 'Eggplant', planting_depth: '1-2 in', days_to_germinate: '5-7 days',
                            time_to_harvest: '45-60 days', date_planted: '2021-11-23', expected_plant_height: '45-60 in', notes: 'purple', sun_exposure: 'Full sun', user: user1)
      create_list(:seed, 1)

      result = FutureSeedsApiSchema.execute(seed_query).as_json
      expect(result['data']['seed'].count).to eq(9)
      expect(result['data']['seed']['name']).to eq(seed1.name)
      expect(result['data']['seed']['plantingDepth']).to eq(seed1.planting_depth)
      expect(result['data']['seed']['daysToGerminate']).to eq(seed1.days_to_germinate)
      expect(result['data']['seed']['timeToHarvest']).to eq(seed1.time_to_harvest)
      expect(result['data']['seed']['datePlanted']).to eq(seed1.date_planted)
      expect(result['data']['seed']['expectedPlantHeight']).to eq(seed1.expected_plant_height)
      expect(result['data']['seed']['notes']).to eq(seed1.notes)
      expect(result['data']['seed']['userId']).to eq(user1.id.to_s)
      expect(result['data']['seed']['sunExposure']).to eq('FULLSUN')
    end

    def seed_query
      <<~GQL
        {
          seed(id:1){
            name
            plantingDepth
            daysToGerminate
            timeToHarvest
            datePlanted
            expectedPlantHeight
            notes
            userId
            sunExposure
          }
        }
      GQL
    end
  end
end
