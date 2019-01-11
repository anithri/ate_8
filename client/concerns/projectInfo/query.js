import { gql } from 'apollo-boost'

export const GET_PROJECT_INFO = gql`
  query getProjectInfo($gameId: ID!) {
    projectInfo: game(gameId: $gameId) {
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
