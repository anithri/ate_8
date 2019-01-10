import PropTypes from 'prop-types'

export const workerShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  slug: PropTypes.string.isRequired,
  total: PropTypes.number,
})
