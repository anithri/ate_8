---
to: <%= mkPath('list/query.js') %>
---
import { gql } from 'apollo-boost'

export const <%= LIST_FRAGMENT_NAME %> = gql`
  fragment <%= listFragmentName %> on <%= varName %>Connection {
    all: edges {
      <%= varName %>: node {
        id
        slug
      }
    }
  }
`

export const <%= LIST_QUERY_NAME %> = gql`
  <%= listVarName %> {
    ...<%= listFragmentName %>
  }
`
