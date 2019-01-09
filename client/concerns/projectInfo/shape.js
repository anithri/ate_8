import PropTypes from 'prop-types'
import { workerListShape } from 'concerns/worker'

export const projectInfoShape = PropTypes.shape({
  board: PropTypes.shape({
    bar: PropTypes.shape({
      workers: workerListShape,
    }).isRequired,
    orientation: PropTypes.string.isRequired,
  }),
  id: PropTypes.string.isRequired,
})
