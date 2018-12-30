---
to: <%= h.src('concerns', className, 'shape.js') %>
---
import PropTypes from 'prop-types'

export const <%= className %>Shape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
})
