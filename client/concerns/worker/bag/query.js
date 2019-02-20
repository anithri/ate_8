import { gql } from 'apollo-boost'

export const GET_WORKER_BAG = gql`
  query getWorkerBag($workerBagId: ID!) {
    workerBag: boardSpace(boardSpaceId: $workerBagId) {
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
