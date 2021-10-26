# frozen_string_literal: true

class FutureSeedsApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
