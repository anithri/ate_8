import { useQuery } from 'react-apollo-hooks'
import DefaultLoading from 'components/Loading'
import DefaultError from 'components/QueryError'
import React from 'react'
import { emptyQuery, spreadData } from './utils'

export const createContainer = args => {
  const {
    Display,
    displayName = 'UnknownContainer',
    Loading = DefaultLoading,
    Error = DefaultError,
    query,
    preQuery = emptyQuery,
    postQuery = spreadData,
    propTypes = {},
  } = args

  const container = props => {
    const containerProps = preQuery(props)
    const variables = containerProps || {}

    const { data, error, loading } = useQuery(query, { variables })

    if (loading) return <Loading />
    if (error) return <Error error={error} />

    const displayProps = postQuery(props, data)

    return <Display {...displayProps} />
  }

  container.displayName = displayName
  container.propTypes = propTypes

  return container
}
