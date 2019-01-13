import PropTypes from 'prop-types'

export const cardDeckShape = PropTypes.shape({
  cardCount: PropTypes.number,
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  slug: PropTypes.string.isRequired,
}).isRequired
