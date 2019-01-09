import { gql } from 'apollo-boost'
import { PLAYER_LIST_FRAGMENT } from 'concerns/player'
import { WORKER_LIST_FRAGMENT } from 'concerns/worker'

export const GET_GAME = gql`
  query getGame($gameId: ID!) {
    game(gameId: $gameId) {
      id
      name
      players {
        ...playerListFragment
      }
      workerTypes {
        ...workerListFragment
      }
    }
  }
  ${PLAYER_LIST_FRAGMENT}
  ${WORKER_LIST_FRAGMENT}
`
