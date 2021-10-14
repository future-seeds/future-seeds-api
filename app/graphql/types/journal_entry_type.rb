module Types
  class JournalEntryType < Types::BaseObject
    field :date, String, null: false
    field :description, String, null: false
  end
end
