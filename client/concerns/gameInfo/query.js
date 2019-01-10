import { WORKER_LIST_FRAGMENT, WORKER_SUMMARY_FRAGMENT } from 'concerns/worker'
import { gql } from 'apollo-boost'

export const GET_GAME_INFO = gql`
  query getGameInfo($gameId: ID!) {
    gameInfo: game(gameId: $gameId) {
      id
      name
      board {
        activeWorkers {
          ...workerSummaryFragment
        }
        deadWorkers {
          ...workerSummaryFragment
        }
        pendingWorkers {
          ...workerSummaryFragment
        }
      }
      workerTypes {
        ...workerListFragment
      }
    }
  }
  ${WORKER_SUMMARY_FRAGMENT}
  ${WORKER_LIST_FRAGMENT}
`
