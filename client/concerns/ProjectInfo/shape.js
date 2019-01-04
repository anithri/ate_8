import PropTypes from 'prop-types'
import { workerShape } from 'concerns/Worker/shape'

export const projectInfoShape = PropTypes.shape({
  board: PropTypes.shape({
    bar: PropTypes.arrayOf(workerShape),
  }),
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
})
