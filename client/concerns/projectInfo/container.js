import { GET_PROJECT_INFO } from './query'
import { parseProjectInfo } from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

export const ProjectInfoContainer = (Display, displayName = 'ProjectInfo') => {
  const container = ({ game, ...props }) => {
    return (
      <Query query={GET_PROJECT_INFO} variables={{ gameId: game.id }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          const projectInfo = parseProjectInfo(data.projectInfo)
          return <Display projectInfo={projectInfo} {...props} />
        }}
      </Query>
    )
  }
  container.displayName = displayName + 'Container'
  container.propTypes = {
    game: PropTypes.shape({
      id: PropTypes.string.isRequired,
    }).isRequired,
  }

  return container
}
