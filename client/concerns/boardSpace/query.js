import { gql } from 'apollo-boost'
export const GET_BOARD_SPACE = gql`
  query getBoardSpace($boardSpaceId: ID!) {
    boardSpace(boardSpaceId: $boardSpaceId) {
      id
      name
      slug
      cards {
        all: edges {
          card: node {
            id
            name
            requiredWorkers {
              id
              name
              slug
            }
          }
        }
      }
      workers {
        all: edges {
          worker: node {
            id
            name
            slug
            isMet
          }
        }
      }
    }
  }
`
