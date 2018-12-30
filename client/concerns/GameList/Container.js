import {GET_GAMESLIST} from 'models/Gameslist'
import PropTypes from 'prop-types'
import {Query} from 'react-apollo'
import React from 'react'

const GameslistContainer = ({className, display: GameslistDisplay}) => (
  <Query query={GET_GAMESLIST}>
    {({loading, error, data: {game}}) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>
      return <GameslistDisplay data={data} className={className} />
    }}
  </Query>
)

GameslistContainer.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default GameslistContainer
