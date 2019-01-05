import { gql } from 'apollo-boost'

export const WORKER_FRAGMENT = gql`
  fragment WorkerFragment on Worker {
    id
    name
    slug
  }
`

export const WORKERS_FRAGMENT = gql`
  fragment WorkersFragment on WorkerConnection {
    all: edges {
      worker: node {
        id
        name
        slug
      }
    }
  }
`
