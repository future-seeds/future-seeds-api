require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display seeds' do
    it 'can query all seeds' do
      user1 = create(:user, first_name: "Brett", last_name: "Tan", city: "San Diego", state: "CA", intentions: "To control the food supply")
      seed1 = create(:seed, name: "Eggplant", planting_depth: "1-2 in", days_to_germinate: "5-7 days", time_to_harvest: "45-60 days", date_planted: "2021-11-23", expected_plant_height: "45-60 in", notes: "purple", sun_exposure: "Full sun", user: user1)
      create_list(:seed, 4)

      result = FutureSeedsApiSchema.execute(all_seeds_query).as_json
      expect(result["data"]["seeds"].count).to eq(5)
      expect(result["data"]["seeds"].first["name"]).to eq("Eggplant")
      expect(result["data"]["seeds"].first["plantingDepth"]).to eq("1-2 in")
      expect(result["data"]["seeds"].first["daysToGerminate"]).to eq("5-7 days")
      expect(result["data"]["seeds"].first["timeToHarvest"]).to eq("45-60 days")
      expect(result["data"]["seeds"].first["datePlanted"]).to eq("2021-11-23")
      expect(result["data"]["seeds"].first["expectedPlantHeight"]).to eq("45-60 in")
      expect(result["data"]["seeds"].first["notes"]).to eq("purple")
      expect(result["data"]["seeds"].first["userId"]).to eq("#{user1.id}")
      expect(result["data"]["seeds"].first["sunExposure"]).to eq("FULLSUN")
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
end
