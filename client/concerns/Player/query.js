import { gql } from 'apollo-boost'

export const PLAYERS_FRAGMENT = gql`
  fragment PlayerFragment on Player {
    id
    name
    order
    slug
    workers {
      id
      name
      slug
    }
  }
  fragment PlayersFragment on PlayerConnection {
    all: edges {
      player: node {
        ...PlayerFragment
      }
    }
  }
`
