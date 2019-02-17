import { GET_PLAYER } from './query'
import { parsePlayer } from './utils'
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

export const PlayerContainer = args => {
  const {
    Display,
    displayName = 'PlayerContainer',
    Loading = DefaultLoading,
    Error = DefaultError,
  } = args

  const container = ({ playerId, ...props }) => {
    const variables = { playerId }
    const { data, error, loading } = useQuery(GET_PLAYER, { variables })

    if (loading) return <Loading />
    if (error) return <Error error={error} />

    const player = parsePlayer(data.player)

    return <Display player={player} {...props || {}} />
  }

  container.displayName = displayName
  container.propTypes = {
    playerId: PropTypes.string.isRequired,
  }

  return container
}
