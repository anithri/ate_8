import { cardShape } from 'concerns/card'
import PropTypes from 'prop-types'

export const projectShape = PropTypes.shape({
  cards: PropTypes.shape({
    projectCard: cardShape,
  }),
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  slug: PropTypes.string.isRequired,
})
