import { gql } from 'apollo-boost'

export const SETUP_TABLE = gql`
  mutation SetupTable {
    setupTable {
      game {
        id
      }
    }
  }
`
