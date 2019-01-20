import PropTypes from 'prop-types'
import {workerListShape} from 'concerns/worker'

export const projectShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  slug: PropTypes.string.isRequired,
  workers: workerListShape.isRequired,
})
