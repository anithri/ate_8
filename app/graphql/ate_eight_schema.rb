# frozen_string_literal: true

class AteEightSchema < GraphQL::Schema

  def self.id_from_object(object, type_definition, query_ctx)
    object.gid
  end

  def self.object_from_id(id, query_ctx)
    Ate8Locator.locate id
  end

  default_max_page_size 50
  mutation(Types::MutationType)
  query(Types::QueryType)
end
