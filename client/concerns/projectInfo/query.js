import { BOARD_SPACE_LIST_FRAGMENT } from 'concerns/boardSpace'
import { gql } from 'apollo-boost'
import { WORKER_LIST_FRAGMENT } from 'concerns/worker'

export const GET_PROJECT_INFO = gql`
  query getProjectInfo($gameId: ID!) {
    projectInfo: game(gameId: $gameId) {
      id
      board {
        orientation
        bar {
          name
          workers {
            ...workerListFragment
          }
        }
        projects {
          ...boardSpaceListFragment
        }
      }
    }
  }
  ${BOARD_SPACE_LIST_FRAGMENT}
  ${WORKER_LIST_FRAGMENT}
`
