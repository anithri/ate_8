import { gql } from 'apollo-boost'

export const WORKER_LIST_FRAGMENT = gql`
  fragment workerListFragment on WorkerConnection {
    all: edges {
      worker: node {
        id
        name
        slug
      }
    }
  }
`
