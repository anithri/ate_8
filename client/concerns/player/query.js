import { gql } from 'apollo-boost'
import { WORKERS_FRAGMENT } from 'concerns/worker/query'

export const PLAYER_FRAGMENT = gql`
  fragment PlayerFragment on Player {
    id
    name
    order
    slug
  }
`

export const PLAYERS_FRAGMENT = gql`
  fragment PlayersFragment on PlayerConnection {
    all: edges {
      player: node {
        id
      }
    }
  }
`

export const GET_PLAYER = gql`
  query GetPlayer($playerId: ID!) {
    player(playerId: $playerId) {
      ...PlayerFragment
      workers {
        ...WorkersFragment
      }
    }
  }
  ${PLAYER_FRAGMENT}
  ${WORKERS_FRAGMENT}
`