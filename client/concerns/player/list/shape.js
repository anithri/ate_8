import PropTypes from 'prop-types'

export const listShape = PropTypes.arrayOf(
  PropTypes.shape({ id: PropTypes.string.isRequired }),
)
