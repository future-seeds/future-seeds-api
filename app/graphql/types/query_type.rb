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
    #
    # field :all_users, [UserType], null: false
    #
    # def all_users
    #   User.all
    # end

    field :users, [UserType], null: false
    field :user, UserType, null: true do
      argument :id, ID, required: true
    end

    def users
      ::User.all
    end

    def user(id:)
      ::User.find(id)
    end
  end
end
