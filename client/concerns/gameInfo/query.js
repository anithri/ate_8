import { gql } from 'apollo-boost'
import { WORKER_LIST_FRAGMENT } from 'concerns/worker'

export const GET_GAME_INFO = gql`
  query getGameInfo($gameId: ID!) {
    gameInfo: game(gameId: $gameId) {
      id
      name
      board {
        activeWorkers {
          ...workerListFragment
        }
        deadWorkers {
          ...workerListFragment
        }
        pendingWorkers {
          ...workerListFragment
        }
      }
      workerTypes {
        ...workerListFragment
      }
    }
  }
  ${WORKER_LIST_FRAGMENT}
`
