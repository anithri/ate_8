import { GET_PROJECT } from './query'
import { parseProject } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const ProjectContainer = (Display, displayName) => {
  const container = ({}) => {
    return (
      <Query query={GET_PROJECT}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const projectData = parseProject(data.project)
          return <ProjectDisplay project={projectData} className={className} />
        }}
      </Query>
    )
  }
  container.displayName = displayName + 'Container'
  container.propTypes = {
    className: PropTypes.string,
    display: PropTypes.func.isRequired,
  }

  return container
}

export default ProjectContainer
