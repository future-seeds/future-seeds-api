module Types
  class MutationType < Types::BaseObject
    field :create_user, field: Mutations::CreateUser
  end
end
