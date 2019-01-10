import { gql } from 'apollo-boost'

export const WORKER_SUMMARY_FRAGMENT = gql`
  fragment workerSummaryFragment on WorkerConnection {
    all: edges {
      worker: node {
        id
        name
        slug
        total
      }
    }
  }
`
