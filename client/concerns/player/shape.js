import PropTypes from 'prop-types'
import { workerShape } from 'concerns/worker/shape'

export const shape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  order: PropTypes.number.isRequired,
  requiredWorkers: PropTypes.arrayOf(workerShape),
  slug: PropTypes.string.isRequired,
})

