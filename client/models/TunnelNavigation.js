import {gql} from 'apollo-boost'

export const GET_TUNNEL_NAVIGATION = gql`
  query {
    windTunnels {
      id
      slug: shortName
      name
    }
    currentUser {
      name
    }
  }
`
