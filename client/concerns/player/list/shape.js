import PropTypes from 'prop-types'

export const playerListShape = PropTypes.arrayOf(
  PropTypes.shape({ id: PropTypes.string.isRequired }).isRequired,
)
