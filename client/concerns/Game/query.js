import { gql } from 'apollo-boost'

export const GET_GAME = gql`
  query GET_GAME($gameId: ID!) {
    game(gameId: $gameId) {
      id
      name
    }
  }
`
