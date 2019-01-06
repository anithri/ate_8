import { GET_GAME_INFO } from 'concerns/gameInfo/query'
import { parseData } from 'concerns/gameInfo/utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const mkContainer = (Display, displayName = 'GameInfo') => {
  const container = ({ gameId, ...props }) => {
    return (
      <Query query={GET_GAME_INFO} variables={{ gameId }}>
        {({ loading, error, data }) => {
          // console.log('GameInfoContainer', gameId, data)
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const gameInfo = parseData(data.gameInfo)
          return <Display gameInfo={gameInfo} {...props} />
        }}
      </Query>
    )
  }
  container.displayName = displayName + 'Container'
  container.propTypes = {
    gameId: PropTypes.string.isRequired,
  }

  return container
}
