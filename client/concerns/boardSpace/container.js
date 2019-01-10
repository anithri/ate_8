import { GET_BOARD_SPACE } from './query'
import { parseBoardSpace } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const boardSpaceContainer = (Display, displayName) => {
  const displayContainer = ({ boardSpaceId, ...props }) => {
    return (
      <Query query={GET_BOARD_SPACE} variables={{ boardSpaceId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const boardSpace = parseBoardSpace(data)
          return <Display boardSpace={boardSpace} {...props} />
        }}
      </Query>
    )
  }
  displayContainer.displayName = displayName + 'Container'
  displayContainer.propTypes = {
    boardSpaceId: PropTypes.string.isRequired,
  }

  return displayContainer
}
