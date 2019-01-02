import PropTypes from 'prop-types'

export const GameInfoShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
})
