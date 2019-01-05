import { gql } from 'apollo-boost'


export const PROJECTS_FRAGMENT = gql`
  fragment ProjectsFragment on ProjectConnection {
    game(gameId: $gameId) {
      board {
        projects {
          all: edges {
            project: node {
              id
              slug
            }
          }
        }
      }
    }
  }
`

export const
