import { GET_WORKER } from './query'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const WorkerContainer = (Display, displayName = 'player') => {
  const container = ({ workerId, ...props }) => {
    return (
      <Query query={GET_WORKER} variables={{ workerId }}>
        {({ loading, error, data }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error!</div>

          return <Display worker={data.worker} {...props} />
        }}
      </Query>
    )
  }
  container.displayName = displayName + 'Container'
  container.propTypes = {
    className: PropTypes.string,
    workerId: PropTypes.string.isRequired,
  }

  return container
}

export default WorkerContainer
