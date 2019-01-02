import { gql } from 'apollo-boost'
import { PLAYERS_FRAGMENT } from 'concerns/Player/query'
import { WORKER_FRAGMENT } from 'concerns/Worker/query'

export const GET_GAME = gql`
  query GET_GAME($gameId: ID!) {
    game(gameId: $gameId) {
      id
      name
      players {
        ...PlayersFragment
      }
      workerTypes {
        ...WorkerFragment
      }
    }
  }
  ${PLAYERS_FRAGMENT}
  ${WORKER_FRAGMENT}
`
