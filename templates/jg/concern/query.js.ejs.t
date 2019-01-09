---
to: <%= mkPath('query.js') %>
---
import { gql } from 'apollo-boost'

export const <%= FRAGMENT_NAME %> = gql`
  fragment <%= fragmentName %> on <%= graphQLName %> {
    id
    name
    slug
  }
`
export const <%= QUERY_NAME %> = gql`
  query (<%= idName %>: ID!) {
    <%= varName %>(<%= idName %>: $<%= idName %>) {
      ...<%= fragmentName %>
    }
  }
`
