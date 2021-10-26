# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::CreateJournalEntry, type: :request do
  it 'creates a journal entry' do
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

    journal_entry = JournalEntry.last
    expect(journal_entry.date).to eq('2021-10-25')
    expect(journal_entry.description).to eq('We were sitting the tree next to the river. I saw a toad. The toad ate three flies and then winked at me before hopping into the water.')
  end

  def mutation
    <<~GQL
      mutation{
        createJournalEntry(input: {
            userId: "#{@user1.id}"
            date: "2021-10-25"
            description: "We were sitting the tree next to the river. I saw a toad. The toad ate three flies and then winked at me before hopping into the water."
          })
              {
              userId
              date
              description
            }
      }
    GQL
  end
end
