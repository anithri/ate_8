import PropTypes from 'prop-types'
import { workerShape } from '../shape'

export const workerBagShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  slug: PropTypes.string.isRequired,
  worker: PropTypes.arrayOf(workerShape),
})
