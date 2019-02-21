import { gql } from 'apollo-boost'
import { GAME_FRAGMENT } from '../../concerns/game'

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
