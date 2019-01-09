import { gql } from 'apollo-boost'

export const PLAYER_LIST_FRAGMENT = gql`
  fragment playerListFragment on PlayerConnection {
    all: edges {
      player: node {
        id
        order
        slug
      }
    }
  }
`
