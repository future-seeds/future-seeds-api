# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::CreateUser, type: :request do
  it 'creates a user' do
    Seed.destroy_all
    JournalEntry.destroy_all
    User.destroy_all

    post '/graphql', params: { query: mutation }

    expect(response).to be_successful

    user = User.last
    expect(user.first_name).to eq('Brett')
    expect(user.last_name).to eq('Toensing')
    expect(user.city).to eq('Atlanta')
    expect(user.state).to eq('GA')
    expect(user.intentions).to eq('Not cut trees')
  end

  def mutation
    <<~GQL
      mutation{
        createUser(
            firstName: "Brett"
            lastName: "Toensing"
            city: "Atlanta"
            state: "GA"
            intentions: "Not cut trees"
          )
        {
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
