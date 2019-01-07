import { gql } from 'apollo-boost'

export const GET_BOARD_TILE = gql`
  query GetBoardTiles($tileId: ID!) {
    tile(tileId: $tileId) {
      id
      name
      slug
    }
  }
`
