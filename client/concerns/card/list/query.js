import { gql } from 'apollo-boost'

export const CARD_LIST_FRAGMENT = gql`
  fragment cardListFragment on DeckConnection {
    all: edges {
      card: node {
        id
        name
        slug
      }
    }
  }
`
