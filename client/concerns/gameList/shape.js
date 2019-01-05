import PropTypes from 'prop-types'

export const gameListItemShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  turn: PropTypes.number.isRequired,
})

export const gameListShape = PropTypes.arrayOf(gameListItemShape)
