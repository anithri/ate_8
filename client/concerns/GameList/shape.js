import PropTypes from 'prop-types'

export const GameListItemShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  turn: PropTypes.number.isRequired,
})

export const GameListShape = PropTypes.arrayOf(GameListItemShape)
