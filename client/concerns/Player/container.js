import { GET_PLAYER } from './query'
import normalizeData from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const PlayerContainer = ({ className, display: PlayerDisplay }) => (
  <Query query={GET_PLAYER}>
    {({ loading, error, data }) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>

      const playerData = normalizeData(data.player)
      return <PlayerDisplay player={playerData} className={className} />
    }}
  </Query>
)

PlayerContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
  
}

export default PlayerContainer
