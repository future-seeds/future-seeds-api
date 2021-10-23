require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display journal entries' do
    it 'can query all journal entries' do
      JournalEntry.destroy_all
      Seed.destroy_all
      User.destroy_all

      user1 = create(:user, first_name: 'Brett', last_name: 'Tan', city: 'San Diego', state: 'CA',
                            intentions: 'To control the food supply')
      je1 = create(:journal_entry, date: '2021-11-23', description: 'The frost eliminated everything', user: user1)
      create_list(:journal_entry, 4)

      result = FutureSeedsApiSchema.execute(all_entries_query).as_json
      expect(result['data']['journalEntries'].count).to eq(5)
      expect(result['data']['journalEntries'].first['date']).to eq('2021-11-23')
      expect(result['data']['journalEntries'].first['description']).to eq('The frost eliminated everything')
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

  describe 'display a journal entry' do
    it 'can query one journal entry' do
      user1 = create(:user, first_name: 'Brett', last_name: 'Tan', city: 'San Diego', state: 'CA',
                            intentions: 'To control the food supply')
      je1 = create(:journal_entry, id: 1, date: '2021-11-23', description: 'The frost eliminated everything',
                                   user: user1)
      create_list(:journal_entry, 1)

      result = FutureSeedsApiSchema.execute(a_journal_entry_query).as_json
      expect(result['data']['journalEntry'].count).to eq(2)
      expect(result['data']['journalEntry']['date']).to eq('2021-11-23')
      expect(result['data']['journalEntry']['description']).to eq('The frost eliminated everything')
    end

    def a_journal_entry_query
      <<~GQL
        {
          journalEntry(id:1){
            date
            description
          }
        }
      GQL
    end
  end
end
