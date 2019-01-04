import PropTypes from 'prop-types'
import { workerShape } from 'concerns/Worker/shape'

export const projectInfoShape = PropTypes.shape({
  board: PropTypes.shape({
    bar: PropTypes.shape({
      workers: PropTypes.arrayOf(workerShape).isRequired,
    }).isRequired,
    orientation: PropTypes.string.isRequired,
  }),
  id: PropTypes.string.isRequired,
})
