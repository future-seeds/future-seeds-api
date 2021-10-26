module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_seed, mutation: Mutations::CreateSeed
    field :create_journal_entry, mutation: Mutations::CreateJournalEntry
  end
end
