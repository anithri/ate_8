# frozen_string_literal: true

class AteEightSchema < GraphQL::Schema
  def self.id_from_object(object, type_definition, query_ctx)
    object.to_signed_global_id.to_s
  end

  def self.object_from_id(id, query_ctx)
    GlobalID::Locator.locate_signed id
  end

  default_max_page_size 50
  mutation(Types::MutationType)
  query(Types::QueryType)

end
