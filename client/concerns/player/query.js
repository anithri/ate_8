import { gql } from 'apollo-boost'

export const GET_PLAYER = gql`
  query GetPlayer($playerId: ID!) {
    player(playerId: $playerId) {
      id
      name
      order
      slug
      requiredWorkers {
        all: edges {
          worker: node {
            id
            name
            slug
          }
        }
      }
    }
  }
`
