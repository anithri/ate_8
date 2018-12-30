---
to: <%= h.src('concerns', className, 'query.js') %>
---
import {gql} from 'apollo-boost'

<% if(isList){ -%>
  export const <%= queryName %> = gql`
    query <%= queryName %> {
      <%= plural %> {
        all: edges {
          <%= args.dataName %>: node {
            id
            name
          }
        }
      }
    }
  `
<% } else { -%>
  export const <%= queryName %> = gql`
    query <%= queryName %> {
      <%= dataName %> {
        all: edges {

        }
      }
    }
  `
<% } -%>
