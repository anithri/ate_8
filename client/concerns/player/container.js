import { GET_PLAYER, parseData } from 'concerns/player'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const mkContainer = (Display, displayName = 'player') => {
  const container = ({ className, playerId }) => {
    return (
      <Query query={GET_PLAYER} variables={{ playerId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const player = parseData(data.player)
          // console.log('PlayerContainer', playerId, player)
          return <Display player={player} className={className} />
        }}
      </Query>
    )
  }
  container.displayName = displayName + 'Container'
  container.propTypes = {
    className: PropTypes.string,
    playerId: PropTypes.string.isRequired,
  }

  return container
}
