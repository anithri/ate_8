import { gql } from 'apollo-boost'

export const GET_WORKER_BAG = gql`
  query getWorkerBag($boardSpaceId: ID!) {
    bag: boardSpace(boardSpaceId: $boardSpaceId) {
      id
      name
      slug
      workers {
        all: edges {
          worker: node {
            id
            name
            slug
          }
        }
      }
    }
  }
`
