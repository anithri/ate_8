---
to: <%= mkPath('container.js') %>
---
import { <%= QUERY_NAME %> } from './query'
import { <%= parseName %> } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const <%= containerName %> = Display => {
  const displayContainer = ({ <%= idName %>, ...props }) => {
    return (
      <Query query={<%= QUERY_NAME %>} variables={{<%= idName %>}}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const <%= varName %> = <%= parseName %>(data.<%= varName %>)
          return <Display <%= varName %>={<%= varName %>} {...props} />
        }}
      </Query>
    )
  }
  displayContainer.displayName = <%= containerName %>
  displayContainer.propTypes = {
    <%= idName %>: PropTypes.string.isRequired,
  }

  return displayContainer
}
