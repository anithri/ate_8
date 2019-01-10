import { gql } from 'apollo-boost'

export const GET_GAME_INFO = gql`
  query getGameInfo($gameId: ID!) {
    gameInfo: game(gameId: $gameId) {
      id
      name
      board {
        activeWorkers {
          all: edges {
            worker: node {
              id
              name
              slug
            }
          }
        }
        deadWorkers {
          all: edges {
            worker: node {
              id
              name
              slug
            }
          }
        }
        pendingWorkers {
          all: edges {
            worker: node {
              id
              name
              slug
            }
          }
        }
        draw {
          cards {
            totalCount
          }
        }
        discards {
          cards {
            totalCount
          }
        }
      }
    }
  }
`
