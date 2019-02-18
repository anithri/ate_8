import { useQuery } from 'react-apollo-hooks'
import DefaultLoading from 'components/Loading'
import DefaultError from 'components/QueryError'

import PropTypes from 'prop-types'
// import { Query } from 'react-apollo'
import React from 'react'

// export const PlayerContainerOld = (
//   Display,
//   displayName = 'player',
//   Loading = DefaultLoading,
// ) => {
//   console.log('PlayerContainer', Display)
//   const container = ({ className, playerId }) => {
//     return (
//       <Query query={GET_PLAYER} variables={{ playerId }}>
//         {({ loading, error, data }) => {
//           if (loading) return <Loading />
//           if (error) return <div>Error!</div>
//
//           const player = parsePlayer(data.player)
//           // console.log('PlayerContainer', playerId, player)
//           return <Display player={player} className={className} />
//         }}
//       </Query>
//     )
//   }
//   container.displayName = displayName + 'Container'
//   container.propTypes = {
//     className: PropTypes.string,
//     playerId: PropTypes.string.isRequired,
//   }
//
//   return container
// }

export const createContainer = args => {
  const {
    Display,
    displayName = 'Container',
    Loading = DefaultLoading,
    Error = DefaultError,
    query,
    preQuery = props => ({}),
    postQuery = (props, data) => ({ ...props, ...data }),
  } = args

  const container = props => {
    const variables = preQuery(props)
    const { data, error, loading } = useQuery(query, { variables })

    if (loading) return <Loading />
    if (error) return <Error error={error} />

    const displayProps = postQuery(props, data)

    return <Display {...displayProps} />
  }

  container.displayName = displayName
  container.propTypes = {
    playerId: PropTypes.string.isRequired,
  }

  return container
}
