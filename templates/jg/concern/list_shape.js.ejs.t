---
to: <%= mkPath('list/shape.js') %>
---
import PropTypes from 'prop-types'

export const <%= listShapeName %> = PropTypes.arrayOf(
  PropTypes.shape({
    id: PropTypes.string.isRequired,
    slug: PropTypes.string.isRequired,
  }).isRequired,
)
