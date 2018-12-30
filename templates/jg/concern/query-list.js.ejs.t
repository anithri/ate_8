---
to: <%= h.src('concerns', className, 'query.js' %>
---
import {gql} from 'apollo-boost'

export const <%= queryName %> = gql`
  query <%= queryName %> {
    <%= dataName %> {
      all: edges {
    }
  }
`
