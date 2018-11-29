module Types
  class HintType < Types::BaseObject
    field :type, Types::StringType, null: true
    field :content, Types::StringType, null: true
  end
end
