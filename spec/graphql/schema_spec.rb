describe RetunnelSchema do
  # You can override `context` or `variables` in
  # more specific scopes
  let(:context) {{
    current_user: build(:employee)
  }}
  let(:variables) {{}}
  let(:query_string) {"query { currentUser { username } }"}
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

  describe "a specific query" do
    let(:query_string) {%|{ currentUser { username } }|}

    it "shows the current_user's name" do
      username = result["data"].dig("currentUser","username")
      expect(username).to eq("batman")
    end
  end
end
