module Types
  class JournalEntryType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: false
    field :description, String, null: false
  end
end
