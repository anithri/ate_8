import { GET_GAME_LIST } from './query'
import { parseList } from './../index'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const mkListContainer = Display => {
  const container = props => (
    <Query query={GET_GAME_LIST}>
      {({ loading, error, data }) => {
        if (loading) return <div>Loading...</div>
        if (error) return <div>Error!</div>

        const games = parseList(data.games)
        return <Display games={games} {...props} />
      }}
    </Query>
  )
  container.displayName = 'GameListContainer'
  container.propTypes = {
    className: PropTypes.string,
  }
  return container
}
