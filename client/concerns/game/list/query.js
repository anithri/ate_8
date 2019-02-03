import { gql } from 'apollo-boost'

export const GET_GAME_LIST = gql`
  query getGameList {
    games {
      all: edges {
        game: node {
          id
          name
          turn
        }
      }
    }
  }
`
