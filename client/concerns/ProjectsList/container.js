import { GET_PROJECTSLIST } from './query'
import normalizeData from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const ProjectsListContainer = (Display, displayName) => {
  const container = ({ }) => {
    return (
      <Query query={ GET_PROJECTSLIST }>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const projectsListData = normalizeData(data.projectsList)
          return <ProjectsListDisplay projectsList={projectsListData} className={className} />
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

export default ProjectsListContainer
