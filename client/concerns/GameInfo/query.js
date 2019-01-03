import { gql } from 'apollo-boost'
import { WORKERS_FRAGMENT } from '../Worker/query'

export const GET_GAME_INFO = gql`
  query GetGameInfo($gameId: ID!) {
    gameInfo: game(gameId: $gameId) {
      id
      name
      board {
        activeWorkers {
          edges {
            node {
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
