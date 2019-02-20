import { createByIdContainer, extractData } from '../base'
import { GET_PROJECT } from './query'
import { parseProject } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const OldProjectContainer = Display => {
  const container = ({ projectId, ...props }) => {
    return (
      <Query query={GET_PROJECT} variables={{ projectId }}>
        {({ loading, error, data }) => {
          if (loading) return <div {...props}>Loading...</div>
          if (error) return <div {...props}>Error! {error}</div>

          const project = parseProject(data)
          return <Display project={project} {...props} />
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

export const ProjectContainer = args =>
  createByIdContainer({
    concern: 'project',
    concernResult: 'card',
    parser: parseProject,
    query: GET_PROJECT,
    ...args,
  })
