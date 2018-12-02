describe RetunnelSchema do
  # You can override `context` or `variables` in
  # more specific scopes
  let(:context) {{
    current_user: build(:employee)
  }}
  let(:variables) {{}}
  let(:query_string) {"query { current_user { username } }"}
  let(:result) {
    res = RetunnelSchema.execute(
      query_string,
      context:   context,
      variables: variables
    )
    # Print any errors
    if res["errors"]
      pp res
    end
    res
  }

  it 'should be a valid schema' do
    expect(result).to be_a GraphQL::Query::Result
  end

  # describe "a specific query" do
  #   # provide a query string for `result`
  #   let(:query_string) { %|{ viewer { name } }| }
  #
  #   context "when there's no current user" do
  #     it "is nil" do
  #       # calling `result` executes the query
  #       expect(result["data"]["viewer"]).to eq(nil)
  #     end
  #   end
  #
  #   context "when there's a current user" do
  #     # override `context`
  #     let(:context) {
  #       { current_user: User.new(name: "ABC") }
  #     }
  #     it "shows the user's name" do
  #       user_name = result["data"]["viewer"]["name"]
  #       expect(user_name).to eq("ABC")
  #     end
  #   end
  # end
end
