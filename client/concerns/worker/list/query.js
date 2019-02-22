import { gql } from 'apollo-boost'

export const WORKER_LIST_FRAGMENT = gql`
  fragment workerListFragment on BagConnection {
    id
    name
    slug
  }
`
