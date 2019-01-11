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
              total
            }
          }
        }
        deadWorkers {
          all: edges {
            worker: node {
              id
              name
              slug
              total
            }
          }
        }
        pendingWorkers {
          all: edges {
            worker: node {
              id
              name
              slug
              total
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
