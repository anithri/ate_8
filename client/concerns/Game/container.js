import { GET_GAME } from './query'
import normalizeData from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const GameContainer = ({ className, gameId, display: GameDisplay }) => (
  <Query query={GET_GAME} variables={{gameId}} >
    {({ loading, error, data }) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>

      const gameData = normalizeData(data.game)
      return <GameDisplay game={gameData} className={className} />
    }}
  </Query>
)

GameContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
  gameId: PropTypes.string.isRequired,
}

export default GameContainer
