require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display users' do
    it 'can query all users' do
      user1 = create(:user, first_name: "Brett", last_name: "Tan", city: "San Diego", state: "CA", intentions: "To control the food supply")
      create_list(:user, 4)

      result = FutureSeedsApiSchema.execute(query).as_json
      expect(result["data"]["users"].count).to eq(5)
      expect(result["data"]["users"].first["firstName"]).to eq("Brett")
      expect(result["data"]["users"].first["lastName"]).to eq("Tan")
      expect(result["data"]["users"].first["city"]).to eq("San Diego")
      expect(result["data"]["users"].first["state"]).to eq("CA")
      expect(result["data"]["users"].first["intentions"]).to eq("To control the food supply")
    end
  end

  def query
    <<~GQL
    {
      users{
        firstName
        lastName
        city
        state
        intentions
      }
    }
    GQL
  end
end
