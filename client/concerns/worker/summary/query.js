import { gql } from 'apollo-boost'

export const WORKER_SUMMARY_FRAGMENT = gql`
  fragment workerSummaryFragment on BagConnection {
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
