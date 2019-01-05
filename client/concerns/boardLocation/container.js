import { GET_BOARD_LOCATION, parseData } from './index'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const mkContainer = (Display, displayName) => {
  const displayContainer = ({ locationId }) => {
    return (
      <Query query={GET_BOARD_LOCATION}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const boardLocation = parseData(data.boardLocation)
          return (
            <boardLocationDisplay
              boardLocation={boardLocation}
              className={className}
            />
          )
        }}
      </Query>
    )
  }
  displayContainer.displayName = displayName + 'Container'
  displayContainer.propTypes = {
    className: PropTypes.string,
    display: PropTypes.func.isRequired,
  }

  return displayContainer
}
