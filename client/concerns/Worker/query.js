import {gql} from 'apollo-boost'

export const WORKER_FRAGMENT = gql`
  fragment WorkerFragment on Worker {
    id
    slug
    name
    order
  }
`
