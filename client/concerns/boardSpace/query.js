import { gql } from 'apollo-boost'

export const GET_BOARD_SPACE = gql`
  query GetBoardSpace($boardSpaceId: ID!) {
    boardSpace(boardSpaceId: $boardSpaceId) {
      id
      name
      slug
      cards {
        all: edges {
          card: node {
            id
            name
          }
        }
      }
    }
  }
`
