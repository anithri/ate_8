import {gql} from 'apollo-boost'

  export const GET_PROJECT = gql`
    query GET_PROJECT {
      project {
        all: edges {

        }
      }
    }
  `
