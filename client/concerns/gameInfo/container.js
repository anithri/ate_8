import { GET_GAME_INFO } from 'concerns/gameInfo/query'
import { parseGameInfo } from 'concerns/gameInfo/utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const GameInfoContainer = (Display, displayName = 'GameInfo') => {
  const container = ({ game, ...props }) => {
    return (
      <Query query={GET_GAME_INFO} variables={{ gameId: game.id }}>
        {({ loading, error, data }) => {
          // console.log('GameInfoContainer', gameId, data)
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const gameInfo = parseGameInfo(data.gameInfo)
          return <Display gameInfo={gameInfo} {...props} />
        }}
      </Query>
    )
  }
  container.displayName = displayName + 'Container'
  container.propTypes = {
    game: PropTypes.shape({
      id: PropTypes.string.isRequired,
    }).isRequired,
  }

  return container
}
