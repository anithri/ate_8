import { GET_PROJECT_INFO, parseData } from 'concerns/projectInfo'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const mkContainer = (Display, displayName = 'ProjectInfo') => {
  const container = ({ gameId, ...props }) => {
    return (
      <Query query={GET_PROJECT_INFO} variables={{ gameId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const projectInfo = parseData(data.projectInfo)
          return <Display projectInfo={projectInfo} {...props} />
        }}
      </Query>
    )
  }
  container.displayName = displayName + 'Container'
  container.propTypes = {
    gameId: PropTypes.string.isRequired,
  }

  return container
}
