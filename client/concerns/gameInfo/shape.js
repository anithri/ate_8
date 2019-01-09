import PropTypes from 'prop-types'
import { workerListShape } from 'concerns/worker'

export const gameInfoShape = PropTypes.shape({
  board: PropTypes.shape({
    activeWorkers: workerListShape,
    deadWorkers: workerListShape,
    pendingWorkers: workerListShape,
  }),
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  workerTypes: workerListShape,
})
