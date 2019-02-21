import PropTypes from 'prop-types'
import { workerListShape } from 'concerns/worker'

export const playerShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  order: PropTypes.number.isRequired,
  requiredWorkers: workerListShape,
  slug: PropTypes.string.isRequired,
  myTurn: PropTypes.bool,
})
