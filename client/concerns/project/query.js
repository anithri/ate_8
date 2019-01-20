import { gql } from 'apollo-boost'

export const GET_PROJECT = gql`
  query getProject($projectId: ID!) {
    project(projectId: $projectId) {
      id
      name
      slug
      card {
        id
        name
        requiredWorkers {
          all: edges {
            worker: node {
              id
              isMet
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
            isMet
            name
            slug
          }
        }
      }
    }
  }
`
