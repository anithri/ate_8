import { GET_CARD_DECK } from './query'
import { parseCardDeck } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const CardDeckContainer = Display => {
  const displayContainer = ({ boardSpaceId, ...props }) => {
    return (
      <Query query={GET_CARD_DECK} variables={{ boardSpaceId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const deck = parseCardDeck(data)
          return <Display deck={deck} {...props} />
        }}
      </Query>
    )
  }
  displayContainer.displayName = CardDeckContainer
  displayContainer.propTypes = {
    boardSpaceId: PropTypes.string.isRequired,
  }

  return displayContainer
}
