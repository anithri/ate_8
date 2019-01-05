import PropTypes from 'prop-types'
import { workerShape } from 'concerns/worker/shape'

export const shape = PropTypes.shape({
  board: PropTypes.shape({
    activeWorkers: PropTypes.arrayOf(workerShape),
    deadWorkers: PropTypes.arrayOf(workerShape),
    pendingWorkers: PropTypes.arrayOf(workerShape),
  }),
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  workerTypes: PropTypes.arrayOf(workerShape),
})
