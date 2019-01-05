import PropTypes from 'prop-types'

export const projectsListShape = PropTypes.arrayOf(
  PropTypes.shape({
    id: PropTypes.string.isRequired,
    slug: PropTypes.string.isRequired,
  }),
)
