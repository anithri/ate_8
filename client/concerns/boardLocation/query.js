import { gql } from 'apollo-boost'

export const GET_BOARD_LOCATION = gql`
  query GetBoardLocation($boardLocationId: ID!) {
    boardLocation(boardLocationId: $boardLocationId) {
      id
      name
      slug
    }
  }
`
