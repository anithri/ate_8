---
to: <%= mkPath('shape.js') %>
---
import PropTypes from 'prop-types'

export const <%= shapeName %> = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  slug: PropTypes.string.isRequired,
})
