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
            id
            name
            slug
          }
        }
        projects {
          id
          name
          slug
        }
      }
    }
  }
`
