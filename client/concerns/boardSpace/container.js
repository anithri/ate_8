import { GET_BOARD_SPACE } from './query'
import { parseBoardSpace } from './utils'
import PropTypes from 'prop-types'
import React from 'react'
import { useQuery } from 'react-apollo-hooks'
import DefaultLoading from 'components/Loading'
import DefaultError from 'components/QueryError'

export const boardSpaceContainer = args => {
  const {
    Display,
    displayName = 'BoardSpaceContainer',
    Loading = DefaultLoading,
    Error = DefaultError,
  } = args

  const container = ({ boardSpaceId, ...props }) => {
    const variables = { boardSpaceId }
    const { data, error, loading } = useQuery(GET_BOARD_SPACE, { variables })

    if (loading) return <Loading />
    if (error) return <Error error={error} />

    const boardSpace = parseBoardSpace(data)

    return <Display boardSpace={boardSpace} {...props} />
  }
  container.displayName = displayName
  container.propTypes = {
    boardSpaceId: PropTypes.string.isRequired,
  }

  return container
}
