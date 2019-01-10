import { GET_CARD } from './query'
import { parseCard } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const CardContainer = Display => {
  const displayContainer = ({ cardId, ...props }) => {
    return (
      <Query query={GET_CARD} variables={{cardId}}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const card = parseCard(data.card)
          return <Display card={card} {...props} />
        }}
      </Query>
    )
  }
  displayContainer.displayName = CardContainer
  displayContainer.propTypes = {
    cardId: PropTypes.string.isRequired,
  }

  return displayContainer
}
