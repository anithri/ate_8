import { gql } from 'apollo-boost'

export const GET_GAME_INFO = gql`
  query GetGameInfo($gameId: ID!) {
    gameInfo: game(gameId: $gameId) {
      id
      name
    }
  }
`
