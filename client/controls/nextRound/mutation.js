import { gql } from 'apollo-boost'
import { GAME_FRAGMENT } from '../../concerns/game'

export const NEXT_ROUND = gql`
  mutation nextRound($gameId: ID!) {
    nextRound(gameId: $gameId) {
      game {
        ...gameFragment
      }
    }
  }
  ${GAME_FRAGMENT}
`
