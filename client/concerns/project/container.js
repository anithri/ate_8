import { GET_PROJECT } from './query'
import { parseProject } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const ProjectContainer = Display => {
  const container = ({ projectId, ...props }) => {
    console.log('ProjectContainer', projectId)
    return (
      <Query query={GET_PROJECT} variables={{ boardSpaceId: projectId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return console.log(error) || <div>Error!</div>

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
