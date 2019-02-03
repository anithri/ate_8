import { gql } from 'apollo-boost'

export const START_GAME = gql`
  mutation startGame($gameId: ID!) {
    startGame(gameId: $gameId) {
      game {
        id
      }
    }
  }
`
