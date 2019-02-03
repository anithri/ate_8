import { gql } from 'apollo-boost'

export const _LIST_FRAGMENT = gql`
  fragment ListFragment on Connection {
    all: edges {
      : node {
        id
        slug
      }
    }
  }
`

export const GET__LIST = gql`
  s {
    ...ListFragment
  }
`
