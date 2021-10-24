module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :intentions, String, null: false

    field :seeds, [SeedType], null: false

    field :journal_entries, [JournalEntryType], null: false
    field :journal_entry, JournalEntryType, null: false
  end
end
