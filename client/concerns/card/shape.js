import PropTypes from 'prop-types'
import { workerListShape } from 'concerns/worker'

export const cardShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  requiredWorkers: workerListShape,
  slug: PropTypes.string.isRequired,
})
