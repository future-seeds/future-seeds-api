require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display journal entries' do
    it 'can query all journal entries' do
      user1 = create(:user, first_name: "Brett", last_name: "Tan", city: "San Diego", state: "CA", intentions: "To control the food supply")
      je1 = create(:journal_entry, date: "2021-11-23", description: "The frost eliminated everything", user: user1)
      create_list(:journal_entry, 4)

      result = FutureSeedsApiSchema.execute(all_entries_query).as_json
      expect(result["data"]["journalEntries"].count).to eq(5)
      expect(result["data"]["journalEntries"].first["date"]).to eq("2021-11-23")
      expect(result["data"]["journalEntries"].first["description"]).to eq("The frost eliminated everything")
    end

    def all_entries_query
      <<~GQL
      {
        journalEntries{
          date
          description
        }
      }
      GQL
    end
  end
end
