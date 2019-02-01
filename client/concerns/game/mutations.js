import { gql } from 'apollo-boost'
import {GAME_FRAGMENT} from './query'

export const START_GAME = gql`
  mutation startGame($gameId: ID!) {
    startGame(gameId: $gameId) {
      game {
        ...gameFragment
      }
    }
  }
  ${GAME_FRAGMENT}
`
