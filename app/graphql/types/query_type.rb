module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # field :user do
    #   type UserType
    #   argument :id, !types.String
    #   resolve -> (root, args, ctx) {User.find(args[:id])}
    # end

    # field :find_user, [UserType], null: false do
    #   argument :id, !types.String
    #   resolve -> (root, args, ctx) {User.find(args)}
    # end
    #
    # def find_user(args)
    #   User.find(args)
    # end

    field :users, [UserType], null: true do
      description 'get all users'
    end

    field :user, UserType, null: true do
      description 'get user by id'
      argument :id, ID, required: true
    end

    field :seeds, [SeedType], null: true do
      description 'get all seeds'
    end

    field :seed, SeedType, null: true do
      description 'get seed by id'
      argument :id, ID, required: true
    end

    field :journal_entries, [JournalEntryType], null: true do
      description 'get all journal entries'
    end

    field :journal_entry, JournalEntryType, null: true do
      description 'get a journal entry by id'
      argument :id, ID, required: true
    end

    def users
      ::User.all # what is the :: syntax for?
    end

    def user(id:)
      ::User.find(id)
    end

    def seeds
      ::Seed.all
    end

    def seed(id:)
      ::Seed.find(id)
    end

    def journal_entries
      ::JournalEntry.all
    end

    def journal_entry(id:)
      ::JournalEntry.find(id)
    end
  end
end
