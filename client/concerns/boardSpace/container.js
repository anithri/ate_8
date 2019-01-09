import { GET_BOARD_SPACE, parseData } from './index'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const mkContainer = (Display, displayName) => {
  const displayContainer = ({ boardSpaceId, ...props }) => {
    return (
      <Query query={GET_BOARD_SPACE}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const boardSpace = parseData(data.boardSpace)
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
