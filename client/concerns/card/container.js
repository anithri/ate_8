import { GET_CARD } from './query'
import { parseCard } from './utils'
import PropTypes from 'prop-types'
import React from 'react'
import { useQuery } from 'react-apollo-hooks'
import DefaultLoading from 'components/Loading'
import DefaultError from 'components/QueryError'

export const CardContainer = args => {
  const {
    Display,
    displayName = 'CardContainer',
    Loading = DefaultLoading,
    Error = DefaultError,
  } = args

  const displayContainer = ({ cardId, ...props }) => {
    const variables = { cardId }
    const { data, error, loading } = useQuery(GET_CARD, { variables })

    if (loading) return <Loading />
    if (error) return <Error error={error} />

    const card = parseCard(data.card)

    return <Display card={card} {...props} />
  }
  displayContainer.displayName = displayName
  displayContainer.propTypes = {
    cardId: PropTypes.string.isRequired,
  }

  return displayContainer
}
