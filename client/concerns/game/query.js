import { gql } from 'apollo-boost'

export const GAME_FRAGMENT = gql`
  fragment gameFragment on Game {
    id
    name
    turn
    round
    currentState
    players {
      all: edges {
        player: node {
          id
          slug
          myTurn
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
    messages {
      body
      icon
      theme
    }
  }
`

export const GET_GAME = gql`
  query getGame($gameId: ID!) {
    game(gameId: $gameId) {
      ...gameFragment
    }
  }
  ${GAME_FRAGMENT}
`
