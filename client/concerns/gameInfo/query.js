import { gql } from 'apollo-boost'
import { WORKER_SUMMARY_FRAGMENT } from 'concerns/worker'

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
    }
  }
  ${WORKER_SUMMARY_FRAGMENT}
`
