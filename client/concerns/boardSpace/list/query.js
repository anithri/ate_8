import { gql } from 'apollo-boost'

export const BOARD_SPACE_LIST_FRAGMENT = gql`
  fragment boardSpaceListFragment on BoardSpaceConnection {
    all: edges {
      boardSpace: node {
        id
        slug
      }
    }
  }
`
