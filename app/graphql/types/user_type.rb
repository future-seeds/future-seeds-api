module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :city, String, null: true
    field :state, String, null: true
    field :intentions, String, null: true

    field :seeds, [SeedType], null: true

    field :journal_entries, [JournalEntryType], null: true
    field :journal_entry, JournalEntryType, null: true
  end
end
