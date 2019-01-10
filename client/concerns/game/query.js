import { gql } from 'apollo-boost'

export const GET_GAME = gql`
  query getGame($gameId: ID!) {
    game(gameId: $gameId) {
      id
      name
      players {
        all: edges {
          player: node {
            id
            slug
          }
        }
      }
    }
  }
`
