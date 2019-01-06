import { gql } from 'apollo-boost'

export const BOARD_LOCATIONS_FRAGMENT = gql`
  fragment BoardLocationsFragment on BoardLocationConnection {
    all: edges {
      boardLocation: node {
        id
        slug
      }
    }
  }
`
