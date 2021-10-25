  class Mutations::CreateUser < ::Mutations::BaseMutation
    argument :id, ID, required: false
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :city, String, required: false
    argument :state, String, required: false
    argument :intentions, String, required: false

    type Types::UserType
    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(first_name:, last_name:, city:, state:, intentions:)
      user = User.create!(
                         first_name: first_name,
                         last_name: last_name,
                         city: city,
                         state: state,
                         intentions: intentions)
      if user.save
        {
          user: user
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
