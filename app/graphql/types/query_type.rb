module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # field :user do
    #   type UserType
    #   argument :id, !types.String
    #   resolve -> (root, args, ctx) {User.find(args[:id])}
    # end
    field :all_users, [UserType], null: false

    def all_users
      User.all
    end
  end
end
