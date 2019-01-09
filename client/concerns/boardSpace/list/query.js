import { gql } from 'apollo-boost'

export const BOARD_SPACES_FRAGMENT = gql`
  fragment BoardSpacesFragment on BoardSpaceConnection {
    all: edges {
      boardSpace: node {
        id
        slug
      }
    }
  }
`
