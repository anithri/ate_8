import { GET_GAME_LIST } from 'concerns/GameList/query'
import normalizeGameList from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const GameListContainer = Display => {
  const container = ({ className }) => (
    <Query query={GET_GAME_LIST}>
      {({ loading, error, data }) => {
        if (loading) return <div>Loading...</div>
        if (error) return <div>Error!</div>

        const gamesData = normalizeGameList(data.games)
        return <Display games={gamesData} className={className} />
      }}
    </Query>
  )
  container.displayName = 'Woot'
  container.propTypes = {
    className: PropTypes.string,
  }
  return container
}

export default GameListContainer
