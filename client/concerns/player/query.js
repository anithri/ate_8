import { gql } from 'apollo-boost'
import { WORKER_LIST_FRAGMENT } from 'concerns/worker'

export const PLAYER_FRAGMENT = gql`
  fragment PlayerFragment on Player {
    id
    name
    order
    slug
  }
`

export const GET_PLAYER = gql`
  query GetPlayer($playerId: ID!) {
    player(playerId: $playerId) {
      ...PlayerFragment
      requiredWorkers {
        ...workerListFragment
      }
    }
  }
  ${PLAYER_FRAGMENT}
  ${WORKER_LIST_FRAGMENT}
`
