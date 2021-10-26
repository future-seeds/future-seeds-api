# frozen_string_literal: true

module Types
  class JournalEntryType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: false
    field :description, String, null: false
    field :user_id, ID, null: false
  end
end
