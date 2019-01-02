import { GET_PLAYER } from './query'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const PlayerContainer = (Display, displayName = 'Player') => {
  const container = ({ className, playerId }) => {
    return (
      <Query query={GET_PLAYER} variables={{ playerId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          return <Display player={data.player} className={className} />
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

export default PlayerContainer
