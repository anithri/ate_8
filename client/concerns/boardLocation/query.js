import { gql } from 'apollo-boost'

export const GET_BOARD_LOCATION = gql`
  query GetBoardLocation(gameId: $ID!, boardLocationId: $ID) {
    boardLocation {
      all: edges {
        location: node {
          id
          name
        }
      }
    }
  }
`
