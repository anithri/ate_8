import { createByIdContainer } from 'concerns/base'
import { GET_WORKER_BAG } from './query'
import { parseWorkerBag } from './utils'
import PropTypes from 'prop-types'
import React from 'react'

// export const OldWorkerBagContainer = Display => {
//   const displayContainer = ({ boardSpaceId, ...props }) => {
//     return (
//       <Query query={GET_WORKER_BAG} variables={{ boardSpaceId }}>
//         {({ loading, error, data }) => {
//           if (loading) return <div {...props}>Loading...</div>
//           if (error) return <div {...props}>Error!</div>
//
//           const bag = parseWorkerBag(data)
//           return <Display bag={bag} {...props} />
//         }}
//       </Query>
//     )
//   }
//   displayContainer.displayName = 'WorkerBagContainer'
//   displayContainer.propTypes = {
//     boardSpaceId: PropTypes.string.isRequired,
//   }
//
//   return displayContainer
// }

export const WorkerBagContainer = args =>
  createByIdContainer({
    concern: 'workerBag',
    parser: parseWorkerBag,
    query: GET_WORKER_BAG,
    ...args,
  })
