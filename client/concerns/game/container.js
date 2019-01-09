import { GET_GAME } from './query'
import { parseGame } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const GameContainer = (Display, displayName = 'Game') => {
  const displayContainer = props => {
    // console.log('GameContainer',props)
    const {
      className,
      match: {
        params: { gameId },
      },
    } = props
    return (
      <Query query={GET_GAME} variables={{ gameId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>
          const game = parseGame(data.game)
          return <Display game={game} className={className} />
        }}
      </Query>
    )
  }
  displayContainer.displayName = displayName + 'Container'
  displayContainer.propTypes = {
    className: PropTypes.string,
    match: PropTypes.shape({
      params: PropTypes.shape({
        gameId: PropTypes.string.isRequired,
      }),
    }),
  }
  return displayContainer
}
