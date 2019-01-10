import PropTypes from 'prop-types'

export const cardListShape = PropTypes.arrayOf(
  PropTypes.shape({
    id: PropTypes.string.isRequired,
    slug: PropTypes.string.isRequired,
  }).isRequired,
)
