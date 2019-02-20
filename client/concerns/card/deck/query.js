import { gql } from 'apollo-boost'

export const GET_CARD_DECK = gql`
  query getCardDeck($cardDeckId: ID!) {
    cardDeck: boardSpace(boardSpaceId: $cardDeckId) {
      cards {
        totalCount
      }
      id
      name
      slug
    }
  }
`
