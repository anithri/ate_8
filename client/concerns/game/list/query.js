import { gql } from 'apollo-boost'

export const GET_GAME_LIST = gql`
  query GET_GAME_LIST {
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
