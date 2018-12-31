import { gql } from 'apollo-boost'
import { PLAYERS_FRAGMENT } from 'concerns/Player/query'

export const GET_GAME = gql`
  query GET_GAME($gameId: ID!) {
    game(gameId: $gameId) {
      id
      name
      players {
        ...PlayersFragment
      }
    }
  }
  ${PLAYERS_FRAGMENT}
`
