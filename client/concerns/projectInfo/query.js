import { gql } from 'apollo-boost'

export const GET_PROJECT_INFO = gql`
  query getProjectInfo($projectInfoId: ID!) {
    projectInfo: game(gameId: $projectInfoId) {
      id
      board {
        orientation
        bar {
          name
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
        projects {
          all: edges {
            boardSpace: node {
              id
              name
              slug
            }
          }
        }
      }
    }
  }
`
