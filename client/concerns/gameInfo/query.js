import { gql } from 'apollo-boost'
import { WORKERS_FRAGMENT } from 'concerns/worker/query'

export const GET_GAME_INFO = gql`
  query GetGameInfo($gameId: ID!) {
    gameInfo: game(gameId: $gameId) {
      id
      name
      board {
        activeWorkers {
          ...WorkersFragment
        }
        deadWorkers {
          ...WorkersFragment
        }
        pendingWorkers {
          ...WorkersFragment
        }
      }
      workerTypes {
        ...WorkersFragment
      }
    }
  }
  ${WORKERS_FRAGMENT}
`
