import { gql } from 'apollo-boost'

export const GET_CARD = gql`
  query($cardId: ID!) {
    card(cardId: $cardId) {
      id
      name
      slug
      requiredWorkers {
        all: edges {
          worker: node {
            id
            name
            slug
          }
        }
      }
    }
  }
`
