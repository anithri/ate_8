import { GET_GAME } from './query'
import normalizeData from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const GameContainer = Display => {
  const container = ({ className, match: { params: { gameId } } }) => (
    <Query query={GET_GAME} variables={{ gameId }}>
      {({ loading, error, data }) => {
        if (loading) return <div>Loading...</div>
        if (error) return <div>Error!</div>

        const gameData = normalizeData(data.game)
        return <Display game={gameData} className={className} />
      }}
    </Query>
  )
  container.displayName = 'GameDisplay'
  container.propTypes = {
    className: PropTypes.string,
    match: PropTypes.shape({
      params: PropTypes.shape({
        gameId: PropTypes.string.isRequired,
      }),
    }),
  }
  return container
}

export default GameContainer
