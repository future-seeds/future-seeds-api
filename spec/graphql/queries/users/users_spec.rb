require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display users' do
    it 'can query all users' do
      JournalEntry.destroy_all
      Seed.destroy_all
      User.destroy_all

      create(:user, first_name: 'Brett', last_name: 'Tan', city: 'San Diego', state: 'CA',
                    intentions: 'To control the food supply')
      create_list(:user, 4)

      result = FutureSeedsApiSchema.execute(all_users_query).as_json
      expect(result['data']['users'].count).to eq(5)
      expect(result['data']['users'].first['firstName']).to eq('Brett')
      expect(result['data']['users'].first['lastName']).to eq('Tan')
      expect(result['data']['users'].first['city']).to eq('San Diego')
      expect(result['data']['users'].first['state']).to eq('CA')
      expect(result['data']['users'].first['intentions']).to eq('To control the food supply')
    end

    def all_users_query
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

  describe 'display a user' do
    it 'can query one user' do
      create(:user, id: 1, first_name: 'Brett', last_name: 'Tan', city: 'San Diego', state: 'CA',
                    intentions: 'To control the food supply')
      create_list(:user, 1)

      result = FutureSeedsApiSchema.execute(user_query).as_json
      expect(result['data']['user'].count).to eq(5)
      expect(result['data']['user']['firstName']).to eq('Brett')
      expect(result['data']['user']['lastName']).to eq('Tan')
      expect(result['data']['user']['city']).to eq('San Diego')
      expect(result['data']['user']['state']).to eq('CA')
      expect(result['data']['user']['intentions']).to eq('To control the food supply')
    end

    def user_query
      <<~GQL
        {
          user(id: "1"){
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
end
