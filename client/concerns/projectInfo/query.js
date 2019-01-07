import { BOARD_LOCATIONS_FRAGMENT } from 'concerns/boardTile'
import { gql } from 'apollo-boost'
import { WORKERS_FRAGMENT } from 'concerns/worker/query'

export const GET_PROJECT_INFO = gql`
  query GetProjectInfo($gameId: ID!) {
    projectInfo: game(gameId: $gameId) {
      id
      board {
        orientation
        bar {
          name
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
  ${BOARD_LOCATIONS_FRAGMENT}
  ${WORKERS_FRAGMENT}
`
