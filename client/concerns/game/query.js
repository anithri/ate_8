import { gql } from 'apollo-boost'

export const GET_GAME = gql`
  query getGame($gameId: ID!) {
    game(gameId: $gameId) {
      id
      name
      turn
      round
      players {
        all: edges {
          player: node {
            id
            slug
          }
        }
      }
      board {
        orientation
        projects {
          all: edges {
            boardSpace: node {
              id
              slug
            }
          }
        }
        draftBar: bar {
          id
          slug
        }
        drawBag: draw {
          id
          slug
        }
      }
    }
  }
`
