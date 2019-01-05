import { gql } from 'apollo-boost'

export const PLAYERS_FRAGMENT = gql`
  fragment PlayersFragment on PlayerConnection {
    all: edges {
      player: node {
        id
      }
    }
  }
`
