import { gql } from 'apollo-boost'
import { WORKERS_FRAGMENT } from 'concerns/Worker/query'

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
      }
    }
  }
  ${WORKERS_FRAGMENT}
`
