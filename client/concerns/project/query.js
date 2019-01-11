import { gql } from 'apollo-boost'

export const GET_PROJECT = gql`
  query getProject($boardSpaceId: ID!) {
    project: boardSpace(boardSpaceId: $boardSpaceId) {
      id
      name
      slug
      cards {
        projectCard: first {
          id
          name
          requiredWorkers {
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
