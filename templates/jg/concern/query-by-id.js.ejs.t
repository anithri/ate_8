---
inject: true
to: <%= h.src('concerns', className, 'query.js') %>
after: import
skip_if:
---
import {gql} from 'apollo-boost'

export const <%= queryName %> = gql`
  query <%= queryName %> {
    <%= dataName %> {
      all: edges {
    }
  }
`
