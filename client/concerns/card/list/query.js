import { gql } from 'apollo-boost'

export const CARD_LIST_FRAGMENT = gql`
  fragment cardListFragment on cardConnection {
    all: edges {
      card: node {
        id
        slug
      }
    }
  }
`

export const GET_CARD_LIST = gql`
  cards {
    ...cardListFragment
  }
`
