import { GET_CARD_DECK } from './query'
import { parseCardDeck } from './utils'
import PropTypes from 'prop-types'
import React from 'react'
import { useQuery } from 'react-apollo-hooks'
import DefaultLoading from 'components/Loading'
import DefaultError from 'components/QueryError'

export const CardDeckContainer = args => {
  const {
    Display,
    displayName = 'CardDeckContainer',
    Loading = DefaultLoading,
    Error = DefaultError,
  } = args

  const displayContainer = ({ boardSpaceId, ...props }) => {
    const variables = { boardSpaceId }

    const { data, error, loading } = useQuery(GET_CARD_DECK, { variables })

    if (loading) return <Loading />
    if (error) return <Error error={error} />

    const deck = parseCardDeck(data)
    return <Display deck={deck} {...props} />
  }
  displayContainer.displayName = CardDeckContainer
  displayContainer.propTypes = {
    boardSpaceId: PropTypes.string.isRequired,
  }

  return displayContainer
}
