import { GET_PROJECT } from './query'
import { parseProject } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const ProjectContainer = Display => {
  const container = ({ projectId, ...props }) => {
    return (
      <Query query={GET_PROJECT} variable={{ boardSpaceId: projectId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          console.log('ProjectContainer', data)
          const projectData = parseProject(data)
          return <Display project={projectData} {...props} />
        }}
      </Query>
    )
  }
  container.displayName = 'ProjectContainer'
  container.propTypes = {
    projectId: PropTypes.string.isRequired,
  }

  return container
}
