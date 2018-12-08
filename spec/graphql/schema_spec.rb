# frozen_string_literal: true

describe AteEightSchema do
  # You can override `context` or `variables` in
  # more specific scopes
  # let(:context) do
  #   {
  #     current_user: build(:employee)
  #   }
  # end
  # let(:variables) { {} }
  # let(:query_string) { 'query { currentUser { username } }' }
  # let(:result) do
  #   res = AteEightSchema.execute(
  #     query_string,
  #     context: context,
  #     variables: variables
  #   )
  #   # Print any errors
  #   pp res if res['errors']
  #   res
  # end
  #
  # it 'should be a valid schema' do
  #   expect(result).to be_a GraphQL::Query::Result
  # end
  #
  # describe 'a specific query' do
  #   let(:query_string) { %({ currentUser { username } }) }
  #
  #   it "shows the current_user's name" do
  #     username = result['data'].dig('currentUser', 'username')
  #     expect(username).to eq('batman')
  #   end
  # end
end
