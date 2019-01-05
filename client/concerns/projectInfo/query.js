import { BOARD_LOCATIONS_FRAGMENT } from 'concerns/boardLocation'
import { gql } from 'apollo-boost'
import { WORKERS_FRAGMENT } from 'concerns/worker/query'

export const GET_PROJECT_INFO = gql`
  query GetProjectInfo($gameId: ID!) {
    projectInfo: game(gameId: $gameId) {
      id
      board {
        orientation
        bar {
          workers {
            ...WorkersFragment
          }
        }
        projects {
          ...BoardLocationsFragment
        }
      }
    }
  }
  ${WORKERS_FRAGMENT}
  ${BOARD_LOCATIONS_FRAGMENT}
`
