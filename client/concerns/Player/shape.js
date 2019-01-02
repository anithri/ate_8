import PropTypes from 'prop-types'
import { workerShape } from 'concerns/Worker/shape'

export const playerShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  order: PropTypes.number.isRequired,
  slug: PropTypes.string.isRequired,
  workers: PropTypes.arrayOf(workerShape),
})

export const playerListShape = PropTypes.arrayOf(
  PropTypes.shape({ id: PropTypes.string.isRequired }),
)
