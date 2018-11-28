class RetunnelSchema < GraphQL::Schema
  default_max_page_size 5
  mutation(Types::MutationType)
  query(Types::QueryType)
end

