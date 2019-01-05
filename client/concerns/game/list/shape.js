import PropTypes from 'prop-types'

export const listShape = PropTypes.arrayOf(
  PropTypes.shape({
    id: PropTypes.string.isRequired,
    name: PropTypes.string.isRequired,
    turn: PropTypes.number.isRequired,
  }),
)

export default listShape
