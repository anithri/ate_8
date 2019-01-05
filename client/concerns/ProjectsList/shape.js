import PropTypes from 'prop-types'

export const projectsListShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
})
