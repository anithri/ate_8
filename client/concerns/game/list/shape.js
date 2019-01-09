import PropTypes from 'prop-types'

export const gameListShape = PropTypes.arrayOf(
  PropTypes.shape({
    id: PropTypes.string.isRequired,
    name: PropTypes.string.isRequired,
    turn: PropTypes.number.isRequired,
  }),
)
