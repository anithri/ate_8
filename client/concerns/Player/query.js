import { gql } from 'apollo-boost'
import { WORKER_FRAGMENT } from 'concerns/Worker/query'

export const PLAYERS_FRAGMENT = gql`
  fragment PlayerFragment on Player {
    id
    name
    order
    slug
    workers {
      ...WorkerFragment
    }
  }
  fragment PlayersFragment on PlayerConnection {
    all: edges {
      player: node {
        ...PlayerFragment
      }
    }
  }
  ${WORKER_FRAGMENT}
`
