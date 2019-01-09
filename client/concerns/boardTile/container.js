import { GET_BOARD_TILE, parseData } from './index'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const mkContainer = (Display, displayName) => {
  const displayContainer = ({ tileId, ...props }) => {
    return (
      <Query query={GET_BOARD_TILE}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const tile = parseData(data.tile)
          return <Display tile={tile} {...props} />
        }}
      </Query>
    )
  }
  displayContainer.displayName = displayName + 'Container'
  displayContainer.propTypes = {
    tileId: PropTypes.string.isRequired,
  }

  return displayContainer
}
