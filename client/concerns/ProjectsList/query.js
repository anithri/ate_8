import {gql} from 'apollo-boost'

  export const GET_PROJECTSLIST = gql`
    query GET_PROJECTSLIST {
      projectsList {
        all: edges {

        }
      }
    }
  `
