import { GET_GAME_LIST } from 'concerns/GameList/query'
import normalizeGameList from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const GameListContainer = ({ className, display: GameListDisplay }) => (
  <Query query={GET_GAME_LIST}>
    {({ loading, error, data }) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>

      const gamesData = normalizeGameList(data.games)
      return <GameListDisplay games={gamesData} className={className} />
    }}
  </Query>
)

GameListContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default GameListContainer
