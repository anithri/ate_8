import { BOARD_LOCATIONS_FRAGMENT } from 'concerns/boardLocation'
import { gql } from 'apollo-boost'
import { WORKERS_FRAGMENT } from 'concerns/worker/query'

export const GET_GAME = gql`
  query GET_GAME($gameId: ID!) {
    game(gameId: $gameId) {
      id
      name
      players {
        ...BoardLocationsFragment
      }
      workerTypes {
        ...WorkersFragment
      }
    }
  }
  ${BOARD_LOCATIONS_FRAGMENT}
  ${WORKERS_FRAGMENT}
`
