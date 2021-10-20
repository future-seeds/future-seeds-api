require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display users' do
    it 'can query all users' do
      user1 = create(:user, first_name: "Brett", last_name: "Tan", city: "San Diego", state: "CA", intentions: "To control the food supply")
      create_list(:user, 4)

      result = FutureSeedsApiSchema.execute(query).as_json
      expect(result["data"]["users"].count).to eq(5)
      expect(result["data"]["users"].first["first_name"]).to eq("Brett")
      expect(result["data"]["users"].first["last_name"]).to eq("Tan")
    end
  end
end
