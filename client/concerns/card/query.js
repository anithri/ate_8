import { gql } from 'apollo-boost'

export const CARD_FRAGMENT = gql`
  fragment cardFragment on Card {
    id
    name
    slug
  }
`
export const GET_CARD = gql`
  query($cardId: ID!) {
    card(cardId: $cardId) {
      ...cardFragment
    }
  }
  ${CARD_FRAGMENT}
`
